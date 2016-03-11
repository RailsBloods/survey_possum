# SurveyPossum

## Description
A survey creation app that allows users to create survey and collect responses. Please review this <a href="https://www.lucidchart.com/documents/edit/b6d407d2-69e7-4012-9831-f5187d39e1e7?shared=true&">ERD diagram </a>to view the table relationships.

Our <a href="https://www.lucidchart.com/invitations/accept/27ff9c03-5d12-43c2-8bd4-2aec388642f2">workflow diagram</a> illustrates the user's journey through the web app.

## Usage
```Ruby
  before_action :logged_in?
```
Utilizing this method in our controllers maintains app security by keeping users on certain pages.

```Ruby
  accepts_nested_attributes_for :questions
```
This feature allows users to easily modify existing surveys and gives more flexibility in adding new questions. 

Explore SurveyPossum on <a href="https://aqueous-falls-31494.herokuapp.com/">Heroku</a> today!
