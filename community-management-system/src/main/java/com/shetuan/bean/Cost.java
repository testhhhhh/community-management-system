package com.shetuan.bean;

public class Cost {
    //支付id
    private int costId;
    //活动id
    private int activityId;
    //活动名
    private String activityName;
    //用户名
    private String loginName;
    //成员名
    private String memberName;
    //费用
    private double money;
    //社团名
    private String communityName;
    public Cost() {
    }

    public int getCostId() {
        return costId;
    }

    public void setCostId(int costId) {
        this.costId = costId;
    }

    public int getActivityId() {
        return activityId;
    }

    public void setActivityId(int activityId) {
        this.activityId = activityId;
    }

    public String getActivityName() {
        return activityName;
    }

    public void setActivityName(String activityName) {
        this.activityName = activityName;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getMemberName() {
        return memberName;
    }

    public void setMemberName(String memberName) {
        this.memberName = memberName;
    }

    public double getMoney() {
        return money;
    }

    public void setMoney(double money) {
        this.money = money;
    }

    public String getCommunityName() {
        return communityName;
    }

    public void setCommunityName(String communityName) {
        this.communityName = communityName;
    }

    @Override
    public String toString() {
        return "Cost{" +
                "costId=" + costId +
                ", activityId=" + activityId +
                ", activityName='" + activityName + '\'' +
                ", loginName='" + loginName + '\'' +
                ", memberName='" + memberName + '\'' +
                ", money=" + money +
                ", communityName='" + communityName + '\'' +
                '}';
    }
}
