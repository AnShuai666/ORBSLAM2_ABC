/**
* This file is part of ORB-SLAM2.
*
* Copyright (C) 2014-2016 Raúl Mur-Artal <raulmur at unizar dot es> (University of Zaragoza)
* For more information see <https://github.com/raulmur/ORB_SLAM2>
*
* ORB-SLAM2 is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation, either version 3 of the License, or
* (at your option) any later version.
*
* ORB-SLAM2 is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with ORB-SLAM2. If not, see <http://www.gnu.org/licenses/>.
*/
/*
 * 日期:	2018-04-09
 * 时间:	22:06
 * 姓名:	安帅
 * @func    ORBEXTRATOR类声明
*/


#ifndef PROJECT_ORBEXTRATOR_H
#define PROJECT_ORBEXTRATOR_H

#include "define.h"
ORBSLAM2_ABC_NAMESPACE_BEGIN

class ORBextractor
{
public:
/*
*  @property   ORB特征提取
*  @func       对图像进行ORB特征提取，提取nfeatures个
*  @param_in   nfeatures       关键点提取数量
*  @param_in   scaleFactor     金字塔图像缩放因子
*  @param_in   nlevels         金字塔图像层数
*  @param_in   iniThFAST       FAST角点检测初始化阈值
*  @param_in   minThFAST       FAST角点检测最低阈值
*/
ORBextractor(int nfeatures,float scaleFactor,int nlevels,
        int iniThFAST,int minThFAST);

~ORBextractor(){}

protected:

    int nfeatures;
    double scaleFactor;
    int nlevels;
    int iniThFAST;
    int minThFAST;


};

ORBSLAM2_ABC_NAMESPACE_END
#endif //PROJECT_ORBEXTRATOR_H
