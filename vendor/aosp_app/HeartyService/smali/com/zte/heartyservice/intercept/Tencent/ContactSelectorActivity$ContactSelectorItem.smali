.class public Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;
.super Ljava/lang/Object;
.source "ContactSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactSelectorItem"
.end annotation


# instance fields
.field private mDate:J

.field private mInfoText:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mSelected:Z

.field private mSingleSelect:Z

.field private mTimeText:Ljava/lang/String;

.field private mTitleText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZ)V
    .locals 0
    .parameter "titleText"
    .parameter "infoText"
    .parameter "timeText"
    .parameter "name"
    .parameter "number"
    .parameter "date"
    .parameter "selected"
    .parameter "singleSelect"

    .prologue
    .line 780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 781
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->mTitleText:Ljava/lang/String;

    .line 782
    iput-object p2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->mInfoText:Ljava/lang/String;

    .line 783
    iput-object p3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->mTimeText:Ljava/lang/String;

    .line 784
    iput-object p4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->mName:Ljava/lang/String;

    .line 785
    iput-object p5, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->mNumber:Ljava/lang/String;

    .line 786
    iput-wide p6, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->mDate:J

    .line 787
    iput-boolean p8, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->mSelected:Z

    .line 788
    iput-boolean p9, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->mSingleSelect:Z

    .line 789
    return-void
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 761
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->mInfoText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 761
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 761
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->mTitleText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 761
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->mName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .prologue
    .line 812
    iget-wide v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->mDate:J

    return-wide v0
.end method

.method public getInfoText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->mInfoText:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 808
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->mTimeText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->mTitleText:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 816
    iget-boolean v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->mSelected:Z

    return v0
.end method

.method public isSingleSelect()Z
    .locals 1

    .prologue
    .line 824
    iget-boolean v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->mSingleSelect:Z

    return v0
.end method

.method public setmSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 820
    iput-boolean p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->mSelected:Z

    .line 821
    return-void
.end method
