import React from 'react';
import { useState } from 'react';
import {Content, LeftBox, LeftBoxTitle, LeftBoxContent, CenterBox, RightBoxes, RightBox, RightBoxTitle,
  BoxInput, SaveButton, Essential, EssentialDate, DateBox} from '../../common/PorfoStyled';
import DatePicker from 'react-datepicker';
import 'react-datepicker/dist/react-datepicker.css';
import { ko } from 'date-fns/esm/locale';
import axiosInstance from '../../common/customAxios';
import { apis } from '../../common/apis';
import { addDays } from 'date-fns/esm';
import getYear from 'date-fns/getYear';
import getMonth from 'date-fns/getMonth';
import range from "lodash/range"


const GraduationEditComponent = ({getServerData}) => {
  const years = range(getYear(new Date()), getYear(new Date())-40, -1);
  const months = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"];
  const [schoolName, setschoolName] = useState('');
  const [startDate, setStartDate] = useState('');
  const [endDate, setEndDate] = useState('');
  const [location, setlocation] = useState('');
  const [majorName, setmajorName] = useState('');
  const [doubleMajorName, setdoubleMajorName] = useState('');
  const [subMajorName, setsubMajorName] = useState('');
  const [majorCredit, setmajorCredit] = useState('');
  const [totCredit, settotCredit] = useState('');
  const [majorAvgCredit, setmajorAvgCredit] = useState('');
  const [totAvgCredit, settotAvgCredit] = useState('');
  const [data, setData] = useState({schoolName: '', startDate: '', endDate: '', location: '', majorName: '', doubleMajorName: '', subMajorName: '', majorCredit: '', totCredit: '', majorAvgCredit: '', totAvgCredit: ''});

  const onChangeNameHandler = e => {
    setschoolName(e.target.value);
    setData({ ...data, schoolName: schoolName });
  };

  const onChangelocationHandler = e => {
    setlocation(e.target.value);
    setData({ ...data, location: location });
  };

  const onChangemajorNameHandler = e => {
    setmajorName(e.target.value);
    setData({ ...data, majorName: majorName });
  };

  const onChangedoubleMajorNameHandler = e => {
    setdoubleMajorName(e.target.value);
    setData({ ...data, doubleMajorName: doubleMajorName });
  };

  const onChangesubMajorNameHandler = e => {
    setsubMajorName(e.target.value);
    setData({ ...data, subMajorName: subMajorName });
  };

  const onChangemajorCreditHandler = e => {
    setmajorCredit(e.target.value);
    setData({ ...data, majorCredit: majorCredit });
  };

  const onChangetotCreditHandler = e => {
    settotCredit(e.target.value);
    setData({ ...data, totCredit: totCredit });
  };

  const onChangemajorAvgCreditHandler = e => {
    setmajorAvgCredit(e.target.value);
    setData({ ...data, majorAvgCredit: majorAvgCredit });
  };

  const onChangetotAvgCreditHandler = e => {
    settotAvgCredit(e.target.value);
    setData({ ...data, totAvgCredit: totAvgCredit });
  };

  const addButtonClicked = () => {
    const data = {
      schoolName: schoolName === "" ? null : schoolName,
      startDate: startDate === "" ? null : addDays(startDate, 1),
      endDate: endDate === "" ? null : addDays(endDate, 1),
      location: location === "" ? null : location,
      majorName,
      doubleMajorName,
      subMajorName,
      majorCredit,
      totCredit,
      majorAvgCredit,
      totAvgCredit,
    }

    if (data.schoolName === null || data.startDate === null || data.location === null) {
      alert("???????????? ????????? ?????????.")
    } else {
    axiosInstance
      .post(apis.graduation, data)
      .then(response => {
        if (response.status === 200) {
          getServerData()
          setschoolName('')
          setStartDate('')
          setEndDate('')
          setlocation('')
          setmajorName('')
          setdoubleMajorName('')
          setsubMajorName('')
          setmajorCredit('')
          settotCredit('')
          setmajorAvgCredit('')
          settotAvgCredit('')
        }
      })
      .catch(error => console.log(error));}
  };

  return (
    <Content>
      <LeftBox style={{marginLeft: "2rem"}}>
        <br/>
        <LeftBoxTitle>?????????<EssentialDate>(*)</EssentialDate>{"\u00A0"}{"\u00A0"}~{"\u00A0"}{"\u00A0"}?????????</LeftBoxTitle>
        <LeftBoxContent>
          <DatePicker
            renderCustomHeader={({
              date,
              changeYear,
              changeMonth,
            }) => (
              <Content>
                <DateBox>
                  <select
                    value={getYear(date)}
                    onChange={({ target: { value } }) => changeYear(Number(value))}
                  >
                    {years.map((option) => (
                      <option key={option} value={option}>
                        {option}
                      </option>
                    ))}
                  </select>
                  <span> ???</span>
                </DateBox>
                <DateBox>
                  <select
                    value={months[getMonth(date)]}
                    onChange={({ target: { value } }) =>
                      changeMonth(months.indexOf(value))
                    }
                  >
                    {months.map((option) => (
                      <option key={option} value={option}>
                        {option}
                      </option>
                    ))}
                  </select>
                  <span> ???</span>
                </DateBox>
              </Content>
            )}
            locale={ko}
            placeholderText='?????????'
            dateFormat="yyyy - MM - dd"
            autoComplete="off"
            id="contentFont"
            selected={startDate}
            onChange={date => setStartDate(date)}
          />
        </LeftBoxContent>
        <LeftBoxContent>~
          <DatePicker
            renderCustomHeader={({
              date,
              changeYear,
              changeMonth,
            }) => (
              <Content>
                <DateBox>
                  <select
                    value={getYear(date)}
                    onChange={({ target: { value } }) => changeYear(Number(value))}
                  >
                    {years.map((option) => (
                      <option key={option} value={option}>
                        {option}
                      </option>
                    ))}
                  </select>
                  <span> ???</span>
                </DateBox>
                <DateBox>
                  <select
                    value={months[getMonth(date)]}
                    onChange={({ target: { value } }) =>
                      changeMonth(months.indexOf(value))
                    }
                  >
                    {months.map((option) => (
                      <option key={option} value={option}>
                        {option}
                      </option>
                    ))}
                  </select>
                  <span> ???</span>
                </DateBox>
              </Content>
            )}
            locale={ko}
            placeholderText='?????????'
            dateFormat="yyyy - MM - dd"
            autoComplete="off"
            id="contentFont"
            selected={endDate}
            onChange={date => setEndDate(date)}
          />
        </LeftBoxContent>
        <br/><br/>
        <SaveButton
          onClick={addButtonClicked}
        >??????</SaveButton>
      </LeftBox>
      <CenterBox></CenterBox>
      <RightBoxes>
        <RightBox>
          <RightBoxTitle>????????? <Essential>(*)</Essential></RightBoxTitle>
          <BoxInput 
            value={schoolName}
            onChange={onChangeNameHandler}
            placeholder='???????????? ????????? ?????????'
          ></BoxInput>
        </RightBox>
        <RightBox>
          <RightBoxTitle>?????? <Essential>(*)</Essential></RightBoxTitle>
          <BoxInput 
            value={location}
            onChange={onChangelocationHandler}
            placeholder='????????? ????????? ?????????'
          ></BoxInput>
        </RightBox>
        <RightBox>
          <RightBoxTitle>??????</RightBoxTitle>
          <BoxInput 
            value={majorName}
            onChange={onChangemajorNameHandler}
            placeholder='????????? ????????? ?????????'
          ></BoxInput>
        </RightBox>
        <RightBox>
          <RightBoxTitle>????????????</RightBoxTitle>
          <BoxInput 
            value={doubleMajorName}
            onChange={onChangedoubleMajorNameHandler}
            placeholder='??????????????? ????????? ?????????'
          ></BoxInput>
        </RightBox>
        <RightBox>
          <RightBoxTitle>?????????</RightBoxTitle>
          <BoxInput 
            value={subMajorName}
            onChange={onChangesubMajorNameHandler}
            placeholder='???????????? ????????? ?????????'
          ></BoxInput>
        </RightBox>
        <RightBox>
          <RightBoxTitle>?????? ????????????</RightBoxTitle>
          <BoxInput 
            value={majorCredit}
            onChange={onChangemajorCreditHandler}
            placeholder='?????? ??????????????? ????????? ?????????'
          ></BoxInput>
        </RightBox>
        <RightBox>
          <RightBoxTitle>??? ????????????</RightBoxTitle>
          <BoxInput 
            value={totCredit}
            onChange={onChangetotCreditHandler}
            placeholder='??? ??????????????? ????????? ?????????'
          ></BoxInput>
        </RightBox>
        <RightBox>
          <RightBoxTitle>?????? ??????</RightBoxTitle>
          <BoxInput 
            value={majorAvgCredit}
            onChange={onChangemajorAvgCreditHandler}
            placeholder='?????? ????????? ????????? ?????????'
          ></BoxInput>
        </RightBox>
        <RightBox>
          <RightBoxTitle>??? ??????</RightBoxTitle>
          <BoxInput 
            value={totAvgCredit}
            onChange={onChangetotAvgCreditHandler}
            placeholder='??? ????????? ????????? ?????????'
          ></BoxInput>
        </RightBox>
      </RightBoxes>
    </Content>
  )
}


export default GraduationEditComponent;