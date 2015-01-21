.class public Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;
.super Ljava/lang/Object;
.source "InterceptModeListDataEntity.java"


# instance fields
.field private isShowDivider:Z

.field private mInterceptModeType:I

.field private mIsClickable:Z

.field private mIsOnlyTitle:Z

.field private mRadioBtnIsSelected:Z

.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterceptModeType()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->mInterceptModeType:I

    return v0
.end method

.method public getIsClickable()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->mIsClickable:Z

    return v0
.end method

.method public getIsOnlyTitle()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->mIsOnlyTitle:Z

    return v0
.end method

.method public getRadioBtnIsSelected()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->mRadioBtnIsSelected:Z

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isShowDivider()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->isShowDivider:Z

    return v0
.end method

.method public setInterceptModeType(I)V
    .locals 0
    .parameter "interceptmodetype"

    .prologue
    .line 55
    iput p1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->mInterceptModeType:I

    .line 56
    return-void
.end method

.method public setIsClickable(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "isclickable"

    .prologue
    .line 47
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->mIsClickable:Z

    .line 48
    return-void
.end method

.method public setIsOnlyTitle(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "isonlytitle"

    .prologue
    .line 38
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->mIsOnlyTitle:Z

    .line 39
    return-void
.end method

.method public setRadioBtnIsSelected(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "isselected"

    .prologue
    .line 29
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->mRadioBtnIsSelected:Z

    .line 30
    return-void
.end method

.method public setShowDivider(Z)V
    .locals 0
    .parameter "isShowDivider"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->isShowDivider:Z

    .line 68
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .parameter "summary"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->mSummary:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->mTitle:Ljava/lang/String;

    .line 14
    return-void
.end method
