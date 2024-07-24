# COVID-19 IN INDONESIA
<p align="justify">
  This project uses SQL programming language/Google BigQuery to process data and <a href="https://lookerstudio.google.com/reporting/29d3df9b-9966-4874-a23b-513b86a9ed0b">Looker Studio</a> to create an interactive dashboard. I completed this project while participating in Fresh Graduate Academy at <a href="https://www.linkedin.com/in/indahsh/details/education/968984033/multiple-media-viewer/?profileId=ACoAADQ0K_IBB-BflJ1wnBkU3Z47qF6xVW9xyvI&treasuryMediaId=1714306461924">Digital Talent Scholarship</a>.
</p>

## OBJECTIVES
The objectives to be achieved in this project are as follows the following.
1. <p align="justify">Analyze and present COVID-19 data for Indonesia, focusing on different aspects such as active cases, deaths, and recoveries.</p>
2. <p align="justify">Identify provinces with the highest number of new active cases, the least number of deaths, and highlight areas with significant changes in recovery and fatality rates.</p>
3. <p align="justify">Track the progression of COVID-19, including identifying peaks and understanding the impact of the virus in different regions.</p>

## DATA AND METHOD
### Data
<p align="justify">
  The data used is COVID-19 case in Indonesia, spanning from March 1, 2020, to September 15, 2022, and was obtained from <a href="https://www.kaggle.com/datasets/hendratno/covid19-indonesia?resource=download">Kaggle</a>. The data used were from 34 provinces in Indonesia, consisting of 38 columns and 31,822 rows.
</p>

### Method
The steps used in this project are as follows.
1. <p align="justify">Collecting data from Kaggle.</p>
2. <p align="justify">Cleaning and processing data using SQL in Google BigQuery to ensure accuracy.</p>
3. <p align="justify">Creating visualization in Looker Studio to provide an interactive way to explore the data.</p>

## STUDY CASES
1. <p align="justify">Data with the largest total number of active COVID-19 cases sorted by Province?</p>

| Province | Total_New_Active_Cases |
| --- | --- |
| Jawa Barat | 380,287 |
| DKI Jakarta | 336,996 |
| Jawa Tengah | 174,856 |
| Banten | 140,697 |
| Jawa Timur | 115,884 |
| ... | ... |
| Sulawesi Barat | 6,724 |

<p align="justify">
  Based on provincial-level data, West Java has the highest number of active cases at 380,287.
</p>

2. <p align="justify">Take 2 data based on the location iso code with the fewest deaths due to Covid-19!</p>

| Location_ISO_Code | Location | Total_Deaths |
| --- | --- | --- |
| ID-MA | Maluku | 147,196 |
| ID-MU | Maluku Utara | 167,511 |

<p align="justify">
  Based on the ISO code location at the provincial level, ID-MA and ID-MU have the lowest total number of deaths due to Covid-19, with 147,196 and 167,511 cases, respectively.
</p>

3. <p align="justify">Data on when case rates recovered in Indonesia were highest by a number of rates?</p>

| Date | Case_Recovered_Rate | Total_Recovered |
| --- | --- | --- |
| 2022-05-23 | 97.366% | 5,893,340 |
| 2022-05-30 | 97.366% | 5,895,176 |
| 2022-05-29 | 97.365% | 5,894,889 |	
| 2022-05-31 | 97.365% | 5,895,423 |
| 2022-05-28 | 97.365% | 5,894,628 |
| ... | ... | ... |
| 2020-03-09 | 0% | 0 |

<p align="justify">
  Based on national-level data, May 23, 2022, had the highest Case Recovered Rate (CRR) of 97.366%, with 5,893,340 cases recovered.
</p>

4. <p align="justify">Total case fatality rate and case recovered rate of each location iso code sorted from the lowest data?</p>

a. Case fatality rate

| Location_ISO_Code | Location | Case_Fatality_Rate |
| --- | --- | --- |
| ID-PA | Papua | 1.34% |
| ID-PB | Papua Barat | 1.39% |
| ID-JK | DKI Jakarta | 1.406% |	
| ID-BT | Banten | 1.418% |
| ID-JB | Jawa Barat | 1.616% |
| ... | ... | ... |
| ID-JI | Jawa Timur | 6.412% |

<p align="justify">
  Based on location ISO code with province-level location, ID-PA has the lowest Case Fatality Rate (CFR) of 1.34%, and ID-JI has the highest CFR of 6.412%.
</p>

b. Case recovered rate

| Location_ISO_Code | Location | Case_Recovered_Rate |
| --- | --- | --- |
| ID-PA | Papua | 81.207% |
| ID-LA | Lampung | 88.26% |
| ID-AC | Aceh | 89.595% |	
| ID-JT | Jawa Tengah | 90.18% |
| ID-SS | Sumatera Selatan | 91.673% |
| ... | ... | ... |
| ID-JK | DKI Jakarta | 96.458% |

<p align="justify">
  Based on location ISO code with province-level location, ID-PA has the lowest Case Fatality Rate (CFR) of 81.207%, and ID-JK has the highest CFR of 96.458%.
</p>

5. <p align="justify">Data on when the total number of Covid-19 cases started to hit >30,000?</p>

| Date | Total_Cases |
| --- | --- |
| 2020-06-06 | 30,533 |
| 2020-06-07 | 31,205 |
| 2020-06-08 | 32,052 |
| 2020-06-09 | 33,094 |
| 2020-06-10 | 34,335 |
| ... | ... |
| 2022-09-16 | 7,748,617 |

<p align="justify">
  Covid-19 cases at a national level have a total of >30,000 cases, starting on June 6, 2020, with 30,533 cases.
</p>

## DASHBOARD INTERPRETATION
<p align="center">
  <img src="https://github.com/user-attachments/assets/2da2d898-c62c-4f6c-9667-cbfdf5b426cd" width="75%"/>
</p>

- The data illustrates the spread of Covid-19 in Indonesia, with 34 provinces, from March 1, 2020, to September 15, 2022.
- Total Covid-19 cases in Indonesia reached 3.199.673.620 cases.
- Total active Covid-19 cases in Indonesia reached 753.931.281 cases.
- Total recoveries from Covid-19 in Indonesia reached 2.373.017.832 cases.
- Total deaths from Covid-19 in Indonesia reached 72.724.507 cases.
- Based on the geographical map, DKI Jakarta has the highest Covid-19 cases, with 661.579.772 cases.
- Based on the time series diagram, there are 4 waves of Covid-19 in Indonesia: the first peak in January 2021, the second peak in July 2021, the third peak in February 2022, and the fourth peak in August 2022.
- West Java has the highest total active COVID-19 cases, with 380.287 cases.
- Central Java is the province with the highest number of total deaths due to Covid-19, with 33.480 cases.
- East Java is the province with the highest Case Fatality Rate (CFR) of 5,46%, with a Case Recovered Rate (CRR) of 78,12%

## KEY FINDINGS

## RECOMMENDATION STRATEGIES
