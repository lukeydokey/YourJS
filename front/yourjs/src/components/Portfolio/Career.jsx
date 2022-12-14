//μ»€λ¦¬μ΄
import React, {useState, useEffect} from 'react';
import {Container, ContentTitle, ContentSet, Content, LeftBox, CenterBox, RightBoxes, RightBox, RightBoxTitle, RightBoxContent, Hr, NoData} from '../../common/PorfoStyled';
import { apis } from '../../common/apis';
import axiosInstance from '../../common/customAxios';


const Career = () => {
  const [viewData, setViewData] = useState([]);

  useEffect(() => {
    axiosInstance
      .get(apis.career)
      .then(response => {
        setViewData(response.data);
      })
  }, []);

  return (
    <Container id='7'>
      <ContentTitle>π μ»€λ¦¬μ΄</ContentTitle>
      <ContentSet>
        <Hr></Hr>
        {viewData.length ? 
          <div>
            {viewData?.map((el, index) => (
              <Content key={index}>
                <LeftBox>{el.startDate}<br/>~ {el.endDate}</LeftBox>
                <CenterBox></CenterBox>
                <RightBoxes>
                  <RightBox>
                    <RightBoxTitle>νμ¬λͺ</RightBoxTitle>
                    <RightBoxContent>{el.company}</RightBoxContent>
                  </RightBox>
                  <RightBox>
                    <RightBoxTitle>λΆμλͺ</RightBoxTitle>
                    <RightBoxContent>{el.department}</RightBoxContent>
                  </RightBox>
                  <RightBox>
                    <RightBoxTitle>μ§μ</RightBoxTitle>
                    <RightBoxContent>{el.position}</RightBoxContent>
                  </RightBox>
                  {el.salary ? <RightBox>
                    <RightBoxTitle>μ°λ΄</RightBoxTitle>
                    <RightBoxContent>{el.salary}λ§μ</RightBoxContent>
                  </RightBox> : ''}
                </RightBoxes>
              </Content>
            ))}
          </div> : 
          <NoData>λ±λ‘λ μ λ³΄κ° μμ΅λλ€.</NoData>
        }
      </ContentSet>
    </Container>
  )
};

export default Career;
