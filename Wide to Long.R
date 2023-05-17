library(ggplot2)
library(reshape2)

#반복측정으로 넓은 형식의 데이터프레임 생성. 
#Make dataframe wide. There are three column "참가자", "Picture", "real"
참가자 <- c(1:12)
Picture <- c(30, 35, 45, 40, 50, 35, 55, 25, 30, 45, 40, 50)
real <- c(40, 35, 50, 55, 65, 55, 50, 35, 30, 50, 60, 39)
SpiderWide <- data.frame(참가자, Picture, real)
SpiderWide

#"참가자" 컬럼을 기준으로 long한 자료로 변경.
#translate the wide dataframe to long. The id is "참가자"
SpiderWide2Long <-melt(SpiderWide, id.vars = ("참가자")) 
SpiderWide2Long

