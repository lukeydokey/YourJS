import React, { useState } from 'react'
import { Wrapper } from './Portfolio';
import styled from 'styled-components';
import PersonalEdit from '../components/PortfolioEdit/PersonalEdit';
import MilitaryEdit from '../components/PortfolioEdit/MilitaryEdit';
import MilitaryEditComponent from '../components/PortfolioEdit/MilitaryEditComponent';
import GraduationEdit from '../components/PortfolioEdit/GraduationEdit';
import GraduationEditComponent from '../components/PortfolioEdit/GraduationEditComponent';
import EducationEdit from '../components/PortfolioEdit/EducationEdit';
import EducationEditComponent from '../components/PortfolioEdit/EducationEditComponent';
import CertificateEdit from '../components/PortfolioEdit/CertificateEdit';
import CertificateEditComponent from '../components/PortfolioEdit/CertificateEditComponent';
import AwardEdit from '../components/PortfolioEdit/AwardEdit';
import AwardEditComponent from '../components/PortfolioEdit/AwardEditComponent';
import CareerEdit from '../components/PortfolioEdit/CareerEdit';
import CareerEditComponent from '../components/PortfolioEdit/CareerEditComponent';
import ProjectEdit from '../components/PortfolioEdit/ProjectEdit';
import ProjectEditComponent from '../components/PortfolioEdit/ProjectEditComponent';
import { fullWidth } from '../common/size';
import { useEffect } from 'react';
import axiosInstance from '../common/customAxios';
import { apis } from '../common/apis';
import { colors } from '../common/color';


const Box = styled.div`
  width: ${fullWidth};
  height: fit-content;
  margin: 60px auto;
  color: #1E1E1E;
  background-color: #FFF;
  box-shadow: rgba(0, 0, 0, 0.16) 0rem 1rem 4rem 0rem, rgba(0, 0, 0, 0.06) 0px 0px 0px 0.3rem;
  display: flex;
  flex-direction: column;
  align-items: center;
`;

const TabMenu = styled.ul`
  background-color: ${colors.bsColor2};
  color: white;
  display: flex;
  flex-direction: column;
  align-items: center;
  list-style: none;
  padding: 1rem 0 1rem 0;
  width: 9rem; 
  height: fit-content;
  position: fixed; 
  top: 20%;
  margin-left: 83%; 
  user-select: none;
  cursor: pointer;
  font-family: 'GmarketSansMedium';
  border-radius: 1rem;

  .submenu {
  // ?????? Tabmenu ??? ?????? CSS??? ??????
    width: 60%;
    padding: 1rem;
    font-size: 1.3rem;
    transition: 0.5s;
    border-radius: 1rem;
    text-align: center;
  }

  .focused {
   //????????? Tabmenu ?????? ???????????? CSS??? ??????
    background-color: rgb(255,255,255);
    color: rgb(21,20,20);
  }

  & div.desc {
    text-align: center;
  }
`;

const BoxContent = styled.div`
  width: 100%;
  margin: 1.5rem;
`;

const apiSequence = [
  apis.portfolio, apis.military, apis.graduation, apis.education, apis.certificate ,apis.award, apis.career, apis.project
]

const PortfolioEdit = () => {
  
    const [openTab, setOpenTab] = useState(0);
    const [viewData, setViewData] = useState([]);
    const [zeroData, setZeroData] = useState('');

    //?????? ????????? ???????????? ??????
    const getServerData = () => {
      if (openTab === 0) {
      axiosInstance
        .get(apiSequence[openTab])
        .then(response => { 
          setZeroData(response.data);
        })}
      else {
      axiosInstance
        .get(apiSequence[openTab])
        .then(response => { 
          setViewData(response.data);
        })}
    }

    useEffect(() => {
    }, [viewData])

    useEffect(() => {
      getServerData(openTab);
    }, [openTab])

    const menuArr = [
        { name: '????????????', content: <PersonalEdit/>},
        { name: '????????????', content: <MilitaryEdit dataArr={viewData} getServerData={getServerData}/>, component: <MilitaryEditComponent getServerData={getServerData}/> },
        { name: '????????????', content: <GraduationEdit dataArr={viewData} getServerData={getServerData}/>, component: <GraduationEditComponent getServerData={getServerData}/> },
        { name: '????????????', content: <EducationEdit dataArr={viewData} getServerData={getServerData}/>, component: <EducationEditComponent getServerData={getServerData}/> },
        { name: '????????? / ??????', content: <CertificateEdit dataArr={viewData} getServerData={getServerData}/>, component: <CertificateEditComponent getServerData={getServerData}/> },
        { name: '????????????', content: <AwardEdit dataArr={viewData} getServerData={getServerData}/>, component: <AwardEditComponent getServerData={getServerData}/> },
        { name: '?????????', content: <CareerEdit dataArr={viewData} getServerData={getServerData}/>, component: <CareerEditComponent getServerData={getServerData}/>},
        { name: '????????????', content: <ProjectEdit dataArr={viewData} getServerData={getServerData}/>, component: <ProjectEditComponent getServerData={getServerData}/> },
    ];

    const selectMenuHandler = (index) => {
        setOpenTab(index);
    };

    return (
      <Wrapper>
        <Wrapper>
          {menuArr[openTab].component
          ? <Box><BoxContent>{menuArr[openTab].component}</BoxContent></Box>
          : ''}
          <Box><BoxContent>{menuArr[openTab].content}</BoxContent></Box>
          <TabMenu>
            {menuArr.map((el, index) => (
              <li key={index} className={index === openTab ? "submenu focused" : "submenu"}
              onClick={() => selectMenuHandler(index)
              }>{el.name}</li>
            ))}
          </TabMenu>
        </Wrapper>
      </Wrapper>
    )
}

export default PortfolioEdit