.class public Lcom/isw/android/corp/bean/ServiceConfigBean;
.super Ljava/lang/Object;
.source "ServiceConfigBean.java"


# instance fields
.field public autoCloseCallIn:Ljava/lang/String;

.field public blackuser:Ljava/lang/String;

.field public callcenterEnable:Ljava/lang/String;

.field public callcenternumber:Ljava/lang/String;

.field public callcentertips:Ljava/lang/String;

.field public ccMode:Ljava/lang/String;

.field public ccoverlay:Ljava/lang/String;

.field public chupload:Ljava/lang/String;

.field public clearCompanyCachePeroid:Ljava/lang/String;

.field public companyIconUrl:Ljava/lang/String;

.field public companyUrl:Ljava/lang/String;

.field public contactUrl:Ljava/lang/String;

.field public dataDiff:Ljava/lang/String;

.field public diskSpace:Ljava/lang/String;

.field public dotCommUrl:Ljava/lang/String;

.field public dotEnable:Ljava/lang/String;

.field public dotIconUrl:Ljava/lang/String;

.field public dotMediaUrl:Ljava/lang/String;

.field public dotmatch:Ljava/lang/String;

.field public dottips:Ljava/lang/String;

.field public embedShow:Z

.field public enableCompanyDetailUrl:Ljava/lang/String;

.field public enableLog:Z

.field public encodeHistory:Ljava/lang/String;

.field public encodePhone:Ljava/lang/String;

.field public firstrun:Ljava/lang/String;

.field public maxLocalHistory:Ljava/lang/String;

.field public maxSingleCall:Ljava/lang/String;

.field public media:Ljava/lang/String;

.field public mne:Ljava/lang/String;

.field public needphone:Ljava/lang/String;

.field public partBgColor:Ljava/lang/String;

.field public partDuration:Ljava/lang/String;

.field public partTextColor:Ljava/lang/String;

.field public phonepre:Ljava/lang/String;

.field public pushUrl:Ljava/lang/String;

.field public pushdelay:Ljava/lang/String;

.field public pushenable:Ljava/lang/String;

.field public pushinbox:Ljava/lang/String;

.field public pushpreembed:Ljava/lang/String;

.field public pushpreurl:Ljava/lang/String;

.field public showcc:Ljava/lang/String;

.field public sms_number:Ljava/lang/String;

.field public sms_prefix:Ljava/lang/String;

.field public sms_type:Ljava/lang/String;

.field public threshold:Ljava/lang/String;

.field public updateCallDataPeriod:Ljava/lang/String;

.field public updateCompanyBackgroundPeroid:Ljava/lang/String;

.field public updateCompanyDataPeriod:Ljava/lang/String;

.field public updatePhoneLocPeroid:Ljava/lang/String;

.field public updatePkgPeriod:Ljava/lang/String;

.field public uploadCompanyCallHistoryPeriod:Ljava/lang/String;

.field public winks:Ljava/lang/String;

.field public zipCompanyData:Ljava/lang/String;

.field public zone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->firstrun:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->winks:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->media:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->pushUrl:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->sms_number:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->sms_prefix:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->sms_type:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->updateCompanyDataPeriod:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->clearCompanyCachePeroid:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->uploadCompanyCallHistoryPeriod:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->updateCompanyBackgroundPeroid:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->updateCallDataPeriod:Ljava/lang/String;

    .line 45
    const-string v0, "14400"

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->updatePkgPeriod:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->companyUrl:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->enableCompanyDetailUrl:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->companyIconUrl:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotIconUrl:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotmatch:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotCommUrl:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotMediaUrl:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotEnable:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->contactUrl:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->zone:Ljava/lang/String;

    .line 57
    const-string v0, "true"

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->showcc:Ljava/lang/String;

    .line 58
    const-string v0, "false"

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->blackuser:Ljava/lang/String;

    .line 59
    const-string v0, "false"

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->needphone:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->updatePhoneLocPeroid:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->maxLocalHistory:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->maxSingleCall:Ljava/lang/String;

    .line 64
    const-string v0, "true"

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->encodeHistory:Ljava/lang/String;

    .line 65
    const-string v0, "true"

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->encodePhone:Ljava/lang/String;

    .line 66
    const-string v0, "true"

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->zipCompanyData:Ljava/lang/String;

    .line 68
    const-string v0, "false"

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->dataDiff:Ljava/lang/String;

    .line 69
    const-string v0, "false"

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->diskSpace:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->threshold:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->ccMode:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->autoCloseCallIn:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->partTextColor:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->partBgColor:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->partDuration:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->pushenable:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->pushpreembed:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->pushpreurl:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->pushdelay:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->pushinbox:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->ccoverlay:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->chupload:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->dottips:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->callcenterEnable:Ljava/lang/String;

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->callcenternumber:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->callcentertips:Ljava/lang/String;

    .line 98
    iput-boolean v1, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->embedShow:Z

    .line 100
    iput-boolean v1, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->enableLog:Z

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->mne:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/ServiceConfigBean;->phonepre:Ljava/lang/String;

    .line 107
    return-void
.end method
