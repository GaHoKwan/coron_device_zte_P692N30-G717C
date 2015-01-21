.class public Lcom/isw/android/corp/telephony/CallUtil;
.super Ljava/lang/Object;
.source "CallUtil.java"


# static fields
.field public static final CALL_IDLE_STATUS:I = -0x1

.field public static final CALL_IN_ESTABLISHED_STATUS:I = 0x4

.field public static final CALL_IN_RING_STATUS:I = 0x3

.field public static final CALL_IN_SHOW:Ljava/lang/String; = "i"

.field public static final CALL_OUT_ESTABLISHED_STATUS:I = 0x2

.field public static final CALL_OUT_RING_STATUS:I = 0x1

.field public static final CALL_OUT_SHOW:Ljava/lang/String; = "o"

.field public static final CCMODE_FORCED_PART:I = 0x5

.field public static final CCMODE_FULL_SERVICE:I = 0x1

.field public static final CCMODE_MINI_SERVICE:I = 0x4

.field public static final CCMODE_PART_SERVICE:I = 0x3

.field public static final CH_DEFAULT_UPLOAD:I = 0x1

.field public static final CH_FIXED_UPLOAD:I = 0x2

.field public static final CH_MOBILE_UPLOAD:I = 0x3

.field public static final MSG_CCSHOW_CHANGE_UI_AFTER_ACCEPT:I = 0x8

.field public static final MSG_CCSHOW_UI_CANCEL:I = 0x2

.field public static final MSG_CCSHOW_UI_DISPLAY:I = 0x1

.field public static final MSG_CCSHOW_UI_REFRESH_CALL_DURATION:I = 0x7

.field public static final MSG_CCSHOW_UI_SLIDE_ACCEPT_ACTION:I = 0x5

.field public static final MSG_CCSHOW_UI_SLIDE_ACCEPT_TRIGGER:I = 0x3

.field public static final MSG_CCSHOW_UI_SLIDE_HANGUP_ACTION:I = 0x6

.field public static final MSG_CCSHOW_UI_SLIDE_HANGUP_TRIGGER:I = 0x4

.field private static TAG:Ljava/lang/String;

.field public static bHasAccept:Z

.field public static bHasAnswer:Z

.field public static bHasReject:Z

.field public static bIsDotCall:Z

.field public static bIsPushCall:Z

.field public static bIsShowCall:Z

.field public static bMotDualCard:Z

.field public static bMotFirstCall:Z

.field public static callCurrentStatus:I

.field private static companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;

.field private static currentCompanyName:Ljava/lang/String;

.field private static currentPhoneNumber:Ljava/lang/String;

.field public static currentSshow:Ljava/lang/String;

.field private static mimiEngie:Lcom/isw/android/corp/services/WinksEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    const-string v0, "CallUtil"

    sput-object v0, Lcom/isw/android/corp/telephony/CallUtil;->TAG:Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/isw/android/corp/services/WinksEngine;->getInstance()Lcom/isw/android/corp/services/WinksEngine;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/telephony/CallUtil;->mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

    .line 72
    sput-boolean v1, Lcom/isw/android/corp/telephony/CallUtil;->bHasAccept:Z

    .line 73
    sput-boolean v1, Lcom/isw/android/corp/telephony/CallUtil;->bHasReject:Z

    .line 74
    sput-boolean v1, Lcom/isw/android/corp/telephony/CallUtil;->bHasAnswer:Z

    .line 85
    const/4 v0, -0x1

    sput v0, Lcom/isw/android/corp/telephony/CallUtil;->callCurrentStatus:I

    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/isw/android/corp/telephony/CallUtil;->companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;

    .line 89
    sput-boolean v1, Lcom/isw/android/corp/telephony/CallUtil;->bIsDotCall:Z

    .line 90
    sput-boolean v1, Lcom/isw/android/corp/telephony/CallUtil;->bIsShowCall:Z

    .line 91
    sput-boolean v1, Lcom/isw/android/corp/telephony/CallUtil;->bIsPushCall:Z

    .line 93
    const-string v0, ""

    sput-object v0, Lcom/isw/android/corp/telephony/CallUtil;->currentSshow:Ljava/lang/String;

    .line 94
    const-string v0, ""

    sput-object v0, Lcom/isw/android/corp/telephony/CallUtil;->currentPhoneNumber:Ljava/lang/String;

    .line 95
    const-string v0, ""

    sput-object v0, Lcom/isw/android/corp/telephony/CallUtil;->currentCompanyName:Ljava/lang/String;

    .line 105
    sput-boolean v1, Lcom/isw/android/corp/telephony/CallUtil;->bMotDualCard:Z

    .line 106
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isw/android/corp/telephony/CallUtil;->bMotFirstCall:Z

    .line 113
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/isw/android/corp/telephony/CallUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()Lcom/isw/android/corp/services/WinksEngine;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/isw/android/corp/telephony/CallUtil;->mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

    return-object v0
.end method

.method static synthetic access$2(Ljava/lang/String;)Lcom/isw/android/corp/bean/CompanyPushBean;
    .locals 1
    .parameter

    .prologue
    .line 1276
    invoke-static {p0}, Lcom/isw/android/corp/telephony/CallUtil;->parsePush(Ljava/lang/String;)Lcom/isw/android/corp/bean/CompanyPushBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/isw/android/corp/bean/CompanyPushBean;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1072
    invoke-static {p0, p1}, Lcom/isw/android/corp/telephony/CallUtil;->downloadImg(Lcom/isw/android/corp/bean/CompanyPushBean;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Landroid/content/Context;Lcom/isw/android/corp/bean/CompanyPushBean;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1148
    invoke-static {p0, p1, p2}, Lcom/isw/android/corp/telephony/CallUtil;->setSWUpdateNotification(Landroid/content/Context;Lcom/isw/android/corp/bean/CompanyPushBean;I)V

    return-void
.end method

.method public static addPushInbox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "number"
    .parameter "name"
    .parameter "content"

    .prologue
    .line 1417
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1418
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "address"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1419
    const-string v2, "person"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    const-string v2, "type"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    const-string v2, "read"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    const-string v2, "body"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    const-string v2, "date"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1425
    sget-object v2, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1426
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1427
    const-string v3, "content://sms/inbox"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1429
    .local v0, uri:Landroid/net/Uri;
    return-void
.end method

.method public static bIsCompanyPhone(Ljava/lang/String;)Z
    .locals 3
    .parameter "phone"

    .prologue
    const/4 v0, 0x0

    .line 719
    sput-object p0, Lcom/isw/android/corp/telephony/CallUtil;->currentPhoneNumber:Ljava/lang/String;

    .line 721
    sput-boolean v0, Lcom/isw/android/corp/telephony/CallUtil;->bIsShowCall:Z

    .line 722
    sput-boolean v0, Lcom/isw/android/corp/telephony/CallUtil;->bIsPushCall:Z

    .line 723
    sput-boolean v0, Lcom/isw/android/corp/telephony/CallUtil;->bIsDotCall:Z

    .line 724
    const-string v0, ""

    sput-object v0, Lcom/isw/android/corp/telephony/CallUtil;->currentSshow:Ljava/lang/String;

    .line 725
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/isw/android/corp/message/MiniCompanyData;->getCompanyRawItem(Ljava/lang/String;Z)Lcom/isw/android/corp/bean/CompanyItemBean;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/telephony/CallUtil;->companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;

    .line 727
    sget-object v0, Lcom/isw/android/corp/telephony/CallUtil;->companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;

    iget-boolean v0, v0, Lcom/isw/android/corp/bean/CompanyItemBean;->bShowCom:Z

    sput-boolean v0, Lcom/isw/android/corp/telephony/CallUtil;->bIsShowCall:Z

    .line 728
    sget-object v0, Lcom/isw/android/corp/telephony/CallUtil;->companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;

    iget-boolean v0, v0, Lcom/isw/android/corp/bean/CompanyItemBean;->bPushCom:Z

    sput-boolean v0, Lcom/isw/android/corp/telephony/CallUtil;->bIsPushCall:Z

    .line 729
    sget-object v0, Lcom/isw/android/corp/telephony/CallUtil;->companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;

    iget-boolean v0, v0, Lcom/isw/android/corp/bean/CompanyItemBean;->bDotCom:Z

    sput-boolean v0, Lcom/isw/android/corp/telephony/CallUtil;->bIsDotCall:Z

    .line 730
    sget-object v0, Lcom/isw/android/corp/telephony/CallUtil;->companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;

    iget-object v0, v0, Lcom/isw/android/corp/bean/CompanyItemBean;->sshow:Ljava/lang/String;

    sput-object v0, Lcom/isw/android/corp/telephony/CallUtil;->currentSshow:Ljava/lang/String;

    .line 765
    sget-object v0, Lcom/isw/android/corp/telephony/CallUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[bIsCompanyPhone]phone: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bIsShowCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 766
    sget-boolean v2, Lcom/isw/android/corp/telephony/CallUtil;->bIsShowCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bIsPushCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/isw/android/corp/telephony/CallUtil;->bIsPushCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 767
    const-string v2, ", bIsDotCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/isw/android/corp/telephony/CallUtil;->bIsDotCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 768
    const-string v2, ", currentSshow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 769
    sget-object v2, Lcom/isw/android/corp/telephony/CallUtil;->currentSshow:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 765
    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    sget-boolean v0, Lcom/isw/android/corp/telephony/CallUtil;->bIsShowCall:Z

    return v0
.end method

.method public static checkCompanyPhone()V
    .locals 2

    .prologue
    .line 688
    sget-object v0, Lcom/isw/android/corp/telephony/CallUtil;->currentPhoneNumber:Ljava/lang/String;

    .line 689
    const/4 v1, 0x0

    .line 688
    invoke-static {v0, v1}, Lcom/isw/android/corp/message/MiniCompanyData;->getCompanyRawItem(Ljava/lang/String;Z)Lcom/isw/android/corp/bean/CompanyItemBean;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/telephony/CallUtil;->companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;

    .line 691
    sget-object v0, Lcom/isw/android/corp/telephony/CallUtil;->companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;

    iget-boolean v0, v0, Lcom/isw/android/corp/bean/CompanyItemBean;->bShowCom:Z

    sput-boolean v0, Lcom/isw/android/corp/telephony/CallUtil;->bIsShowCall:Z

    .line 692
    sget-object v0, Lcom/isw/android/corp/telephony/CallUtil;->companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;

    iget-boolean v0, v0, Lcom/isw/android/corp/bean/CompanyItemBean;->bPushCom:Z

    sput-boolean v0, Lcom/isw/android/corp/telephony/CallUtil;->bIsPushCall:Z

    .line 693
    sget-object v0, Lcom/isw/android/corp/telephony/CallUtil;->companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;

    iget-boolean v0, v0, Lcom/isw/android/corp/bean/CompanyItemBean;->bDotCom:Z

    sput-boolean v0, Lcom/isw/android/corp/telephony/CallUtil;->bIsDotCall:Z

    .line 695
    return-void
.end method

.method public static checkPush(I)V
    .locals 8
    .parameter "ccs"

    .prologue
    const/4 v5, 0x0

    .line 844
    const-string v0, "pushenable"

    invoke-static {v0, v5}, Lcom/isw/android/corp/util/LocalConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 846
    .local v6, pushenable:Z
    const-string v0, "pushpreembed"

    invoke-static {v0, v5}, Lcom/isw/android/corp/util/LocalConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 848
    .local v3, pushpreembed:Z
    sget-object v2, Lcom/isw/android/corp/telephony/CallUtil;->currentPhoneNumber:Ljava/lang/String;

    .line 849
    .local v2, number:Ljava/lang/String;
    sget-object v4, Lcom/isw/android/corp/telephony/CallUtil;->currentCompanyName:Ljava/lang/String;

    .line 850
    .local v4, name:Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-static {v2}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 851
    const-string v0, "pushdelay"

    const/4 v5, 0x2

    invoke-static {v0, v5}, Lcom/isw/android/corp/util/LocalConfig;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 853
    .local v1, pushdelay:I
    sget-object v0, Lcom/isw/android/corp/telephony/CallUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "number: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", pushenable: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", pushpreembed: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 854
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", pushdelay: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 853
    invoke-static {v0, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    new-instance v0, Lcom/isw/android/corp/telephony/CallUtil$2;

    move v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/isw/android/corp/telephony/CallUtil$2;-><init>(ILjava/lang/String;ZLjava/lang/String;I)V

    .line 1014
    invoke-virtual {v0}, Lcom/isw/android/corp/telephony/CallUtil$2;->start()V

    .line 1016
    .end local v1           #pushdelay:I
    :cond_0
    return-void
.end method

.method public static cleanCompanyItem()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 790
    const/4 v0, 0x0

    sput-object v0, Lcom/isw/android/corp/telephony/CallUtil;->companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;

    .line 791
    sput-boolean v1, Lcom/isw/android/corp/telephony/CallUtil;->bIsShowCall:Z

    .line 792
    sput-boolean v1, Lcom/isw/android/corp/telephony/CallUtil;->bIsDotCall:Z

    .line 793
    sput-boolean v1, Lcom/isw/android/corp/telephony/CallUtil;->bIsPushCall:Z

    .line 794
    const-string v0, ""

    sput-object v0, Lcom/isw/android/corp/telephony/CallUtil;->currentPhoneNumber:Ljava/lang/String;

    .line 795
    const-string v0, ""

    sput-object v0, Lcom/isw/android/corp/telephony/CallUtil;->currentCompanyName:Ljava/lang/String;

    .line 796
    const/4 v0, -0x1

    sput v0, Lcom/isw/android/corp/telephony/CallUtil;->callCurrentStatus:I

    .line 797
    const-string v0, ""

    sput-object v0, Lcom/isw/android/corp/telephony/CallUtil;->currentSshow:Ljava/lang/String;

    .line 798
    return-void
.end method

.method public static displayPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "pushText"
    .parameter "pushUrl"
    .parameter "displayUrl"

    .prologue
    .line 1105
    sget-object v2, Lcom/isw/android/corp/telephony/CallUtil;->TAG:Ljava/lang/String;

    const-string v3, "test:displayPush"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    const-string v2, "pushenable"

    .line 1111
    const/4 v3, 0x0

    .line 1110
    invoke-static {v2, v3}, Lcom/isw/android/corp/util/LocalConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1113
    .local v1, pushenable:Z
    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1114
    invoke-static {p1}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1115
    const-string v2, "pushdelay"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/isw/android/corp/util/LocalConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1116
    .local v0, pushdelay:I
    new-instance v2, Lcom/isw/android/corp/telephony/CallUtil$3;

    invoke-direct {v2, v0, p0, p1, p2}, Lcom/isw/android/corp/telephony/CallUtil$3;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    invoke-virtual {v2}, Lcom/isw/android/corp/telephony/CallUtil$3;->start()V

    .line 1146
    .end local v0           #pushdelay:I
    :cond_0
    return-void
.end method

.method private static downloadImg(Lcom/isw/android/corp/bean/CompanyPushBean;Ljava/lang/String;)V
    .locals 11
    .parameter "pushbean"
    .parameter "urlStr"

    .prologue
    const-wide/16 v9, 0x0

    .line 1074
    const-string v5, "pushClearPeriod"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LocalConfig;->getLong(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v3

    .line 1075
    .local v3, pushClearPeriod:J
    cmp-long v5, v3, v9

    if-nez v5, :cond_3

    .line 1076
    const-string v5, "pushClearPeriod"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/isw/android/corp/util/LocalConfig;->putLong(Ljava/lang/String;J)V

    .line 1082
    :cond_0
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1083
    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1082
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1084
    .local v2, imageName:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/isw/android/corp/util/LocalConfig;->pushDir:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1085
    .local v1, imageFilePath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1086
    .local v0, imageFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1087
    sget-object v5, Lcom/isw/android/corp/telephony/CallUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "downloadImg: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; imageFilePath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1088
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1087
    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    invoke-static {p1, v1}, Lcom/isw/android/corp/http/WinksHttp;->downloadImgURL(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1091
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1092
    iget-object v5, p0, Lcom/isw/android/corp/bean/CompanyPushBean;->i:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1093
    iput-object v1, p0, Lcom/isw/android/corp/bean/CompanyPushBean;->ip:Ljava/lang/String;

    .line 1098
    :cond_2
    :goto_1
    return-void

    .line 1077
    .end local v0           #imageFile:Ljava/io/File;
    .end local v1           #imageFilePath:Ljava/lang/String;
    .end local v2           #imageName:Ljava/lang/String;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/32 v7, 0x7f3d4000

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 1078
    sget-object v5, Lcom/isw/android/corp/util/LocalConfig;->pushDir:Ljava/lang/String;

    invoke-static {v5}, Lcom/isw/android/corp/util/LocalConfig;->deleteAllFile(Ljava/lang/String;)V

    .line 1079
    const-string v5, "pushClearPeriod"

    invoke-static {v5, v9, v10}, Lcom/isw/android/corp/util/LocalConfig;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1094
    .restart local v0       #imageFile:Ljava/io/File;
    .restart local v1       #imageFilePath:Ljava/lang/String;
    .restart local v2       #imageName:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/isw/android/corp/bean/CompanyPushBean;->b:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1095
    iput-object v1, p0, Lcom/isw/android/corp/bean/CompanyPushBean;->bp:Ljava/lang/String;

    goto :goto_1
.end method

.method private static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "path"

    .prologue
    .line 1239
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentCompanyItem(Ljava/lang/String;)Lcom/isw/android/corp/bean/CompanyItemBean;
    .locals 2
    .parameter "phone"

    .prologue
    .line 781
    sget-object v0, Lcom/isw/android/corp/telephony/CallUtil;->companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;

    if-nez v0, :cond_0

    .line 782
    sget-object v0, Lcom/isw/android/corp/telephony/CallUtil;->TAG:Ljava/lang/String;

    .line 783
    const-string v1, "[getCurrentCompanyItem] Warning, companyItem is null!"

    .line 782
    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/isw/android/corp/message/MiniCompanyData;->getCompanyRawItem(Ljava/lang/String;Z)Lcom/isw/android/corp/bean/CompanyItemBean;

    move-result-object v0

    .line 786
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/isw/android/corp/telephony/CallUtil;->companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;

    goto :goto_0
.end method

.method public static getCurrentPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 774
    sget-object v0, Lcom/isw/android/corp/telephony/CallUtil;->currentPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method private static getIcon(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .parameter "ctx"
    .parameter "pushf"

    .prologue
    .line 1250
    const/4 v2, 0x0

    .line 1251
    .local v2, icon:I
    const-string v4, ""

    .line 1253
    .local v4, pkgName:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "drawable"

    sget-object v8, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v6, p1, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1254
    sget-object v6, Lcom/isw/android/corp/telephony/CallUtil;->TAG:Ljava/lang/String;

    invoke-static {v6, p1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    :goto_0
    if-nez v2, :cond_0

    .line 1260
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1262
    .local v5, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1264
    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 1265
    .local v3, packInfo:Landroid/content/pm/PackageInfo;
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v6, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 1266
    sget-object v6, Lcom/isw/android/corp/telephony/CallUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[getIcon]pkgName: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", icon: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1273
    .end local v3           #packInfo:Landroid/content/pm/PackageInfo;
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_1
    return v2

    .line 1255
    :catch_0
    move-exception v1

    .line 1256
    .local v1, ex:Ljava/lang/Exception;
    sget-object v6, Lcom/isw/android/corp/telephony/CallUtil;->TAG:Ljava/lang/String;

    const-string v7, "isw_pushicon is not exist"

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1267
    .end local v1           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1268
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v6, Lcom/isw/android/corp/telephony/CallUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ex: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1269
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v1

    .line 1270
    .restart local v1       #ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static getTime()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1243
    const-string v1, ""

    .line 1244
    .local v1, timeStr:Ljava/lang/String;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1245
    .local v0, sdf:Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 1246
    return-object v1
.end method

.method public static initCompanyCall(Ljava/lang/String;)V
    .locals 1
    .parameter "phone"

    .prologue
    const/4 v0, 0x0

    .line 680
    sput-object p0, Lcom/isw/android/corp/telephony/CallUtil;->currentPhoneNumber:Ljava/lang/String;

    .line 682
    sput-boolean v0, Lcom/isw/android/corp/telephony/CallUtil;->bIsShowCall:Z

    .line 683
    sput-boolean v0, Lcom/isw/android/corp/telephony/CallUtil;->bIsPushCall:Z

    .line 684
    sput-boolean v0, Lcom/isw/android/corp/telephony/CallUtil;->bIsDotCall:Z

    .line 685
    return-void
.end method

.method public static killRival()V
    .locals 1

    .prologue
    .line 698
    new-instance v0, Lcom/isw/android/corp/telephony/CallUtil$1;

    invoke-direct {v0}, Lcom/isw/android/corp/telephony/CallUtil$1;-><init>()V

    .line 715
    invoke-virtual {v0}, Lcom/isw/android/corp/telephony/CallUtil$1;->start()V

    .line 716
    return-void
.end method

.method private static makeRemoteViews(Landroid/content/Context;Lcom/isw/android/corp/bean/CompanyPushBean;)Landroid/widget/RemoteViews;
    .locals 4
    .parameter "ctx"
    .parameter "pushbean"

    .prologue
    .line 1207
    sget-object v1, Lcom/isw/android/corp/telephony/CallUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ipath: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/isw/android/corp/bean/CompanyPushBean;->ip:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; bpath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/isw/android/corp/bean/CompanyPushBean;->bp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1209
    sget v2, Lcom/isw/android/corp/util/RUtils$layout;->isw_push_view:I

    .line 1208
    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1210
    .local v0, rv:Landroid/widget/RemoteViews;
    const-string v1, "1"

    iget-object v2, p1, Lcom/isw/android/corp/bean/CompanyPushBean;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1214
    iget-object v1, p1, Lcom/isw/android/corp/bean/CompanyPushBean;->bp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1215
    sget v1, Lcom/isw/android/corp/util/RUtils$id;->push_bg:I

    iget-object v2, p1, Lcom/isw/android/corp/bean/CompanyPushBean;->bp:Ljava/lang/String;

    invoke-static {v2}, Lcom/isw/android/corp/telephony/CallUtil;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1235
    :cond_0
    :goto_0
    return-object v0

    .line 1220
    :cond_1
    iget-object v1, p1, Lcom/isw/android/corp/bean/CompanyPushBean;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1221
    sget v1, Lcom/isw/android/corp/util/RUtils$id;->push_name:I

    iget-object v2, p1, Lcom/isw/android/corp/bean/CompanyPushBean;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1225
    :goto_1
    sget v1, Lcom/isw/android/corp/util/RUtils$id;->push_tip:I

    iget-object v2, p1, Lcom/isw/android/corp/bean/CompanyPushBean;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1226
    sget v1, Lcom/isw/android/corp/util/RUtils$id;->push_time:I

    invoke-static {}, Lcom/isw/android/corp/telephony/CallUtil;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1228
    iget-object v1, p1, Lcom/isw/android/corp/bean/CompanyPushBean;->bp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1229
    sget v1, Lcom/isw/android/corp/util/RUtils$id;->push_bg:I

    iget-object v2, p1, Lcom/isw/android/corp/bean/CompanyPushBean;->bp:Ljava/lang/String;

    invoke-static {v2}, Lcom/isw/android/corp/telephony/CallUtil;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1231
    :cond_2
    iget-object v1, p1, Lcom/isw/android/corp/bean/CompanyPushBean;->ip:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1232
    sget v1, Lcom/isw/android/corp/util/RUtils$id;->push_icon:I

    iget-object v2, p1, Lcom/isw/android/corp/bean/CompanyPushBean;->ip:Ljava/lang/String;

    invoke-static {v2}, Lcom/isw/android/corp/telephony/CallUtil;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1223
    :cond_3
    sget v1, Lcom/isw/android/corp/util/RUtils$id;->push_name:I

    iget-object v2, p1, Lcom/isw/android/corp/bean/CompanyPushBean;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private static parsePush(Ljava/lang/String;)Lcom/isw/android/corp/bean/CompanyPushBean;
    .locals 27
    .parameter "xmlMessage"

    .prologue
    .line 1277
    new-instance v4, Lcom/isw/android/corp/bean/CompanyPushBean;

    invoke-direct {v4}, Lcom/isw/android/corp/bean/CompanyPushBean;-><init>()V

    .line 1279
    .local v4, bean:Lcom/isw/android/corp/bean/CompanyPushBean;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 1280
    .local v8, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v7, 0x0

    .line 1282
    .local v7, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 1284
    const/4 v9, 0x0

    .line 1285
    .local v9, doc:Lorg/w3c/dom/Document;
    new-instance v24, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v9

    .line 1287
    invoke-interface {v9}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v19

    .line 1289
    .local v19, root:Lorg/w3c/dom/Element;
    const-string v24, "t"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 1290
    .local v20, t:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    if-lez v24, :cond_0

    .line 1291
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 1292
    .local v10, e:Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Text;

    .line 1293
    .local v21, text:Lorg/w3c/dom/Text;
    if-eqz v21, :cond_0

    .line 1294
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v4, Lcom/isw/android/corp/bean/CompanyPushBean;->t:Ljava/lang/String;

    .line 1298
    .end local v10           #e:Lorg/w3c/dom/Element;
    .end local v21           #text:Lorg/w3c/dom/Text;
    :cond_0
    const-string v24, "u"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v22

    .line 1299
    .local v22, u:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    if-lez v24, :cond_1

    .line 1300
    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 1301
    .restart local v10       #e:Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Text;

    .line 1302
    .restart local v21       #text:Lorg/w3c/dom/Text;
    if-eqz v21, :cond_1

    .line 1303
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v4, Lcom/isw/android/corp/bean/CompanyPushBean;->u:Ljava/lang/String;

    .line 1307
    .end local v10           #e:Lorg/w3c/dom/Element;
    .end local v21           #text:Lorg/w3c/dom/Text;
    :cond_1
    const-string v24, "m"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 1308
    .local v15, m:Lorg/w3c/dom/NodeList;
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    if-lez v24, :cond_2

    .line 1309
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 1310
    .restart local v10       #e:Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Text;

    .line 1311
    .restart local v21       #text:Lorg/w3c/dom/Text;
    if-eqz v21, :cond_2

    .line 1312
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v4, Lcom/isw/android/corp/bean/CompanyPushBean;->m:Ljava/lang/String;

    .line 1315
    .end local v10           #e:Lorg/w3c/dom/Element;
    .end local v21           #text:Lorg/w3c/dom/Text;
    :cond_2
    const-string v24, "x"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 1316
    .local v23, x:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    if-lez v24, :cond_3

    .line 1317
    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 1318
    .restart local v10       #e:Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Text;

    .line 1319
    .restart local v21       #text:Lorg/w3c/dom/Text;
    if-eqz v21, :cond_3

    .line 1320
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v4, Lcom/isw/android/corp/bean/CompanyPushBean;->x:Ljava/lang/String;

    .line 1323
    .end local v10           #e:Lorg/w3c/dom/Element;
    .end local v21           #text:Lorg/w3c/dom/Text;
    :cond_3
    const-string v24, "i"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 1324
    .local v13, i:Lorg/w3c/dom/NodeList;
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    if-lez v24, :cond_4

    .line 1325
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v13, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 1326
    .restart local v10       #e:Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Text;

    .line 1327
    .restart local v21       #text:Lorg/w3c/dom/Text;
    if-eqz v21, :cond_4

    .line 1328
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v4, Lcom/isw/android/corp/bean/CompanyPushBean;->i:Ljava/lang/String;

    .line 1331
    .end local v10           #e:Lorg/w3c/dom/Element;
    .end local v21           #text:Lorg/w3c/dom/Text;
    :cond_4
    const-string v24, "b"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 1332
    .local v3, b:Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    if-lez v24, :cond_5

    .line 1333
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 1334
    .restart local v10       #e:Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Text;

    .line 1335
    .restart local v21       #text:Lorg/w3c/dom/Text;
    if-eqz v21, :cond_5

    .line 1336
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v4, Lcom/isw/android/corp/bean/CompanyPushBean;->b:Ljava/lang/String;

    .line 1339
    .end local v10           #e:Lorg/w3c/dom/Element;
    .end local v21           #text:Lorg/w3c/dom/Text;
    :cond_5
    const-string v24, "a"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 1340
    .local v2, a:Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    if-lez v24, :cond_6

    .line 1341
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 1342
    .restart local v10       #e:Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Text;

    .line 1343
    .restart local v21       #text:Lorg/w3c/dom/Text;
    if-eqz v21, :cond_6

    .line 1344
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v4, Lcom/isw/android/corp/bean/CompanyPushBean;->a:Ljava/lang/String;

    .line 1347
    .end local v10           #e:Lorg/w3c/dom/Element;
    .end local v21           #text:Lorg/w3c/dom/Text;
    :cond_6
    const-string v24, "c"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 1348
    .local v5, c:Lorg/w3c/dom/NodeList;
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    if-lez v24, :cond_7

    .line 1349
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v5, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 1350
    .restart local v10       #e:Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Text;

    .line 1351
    .restart local v21       #text:Lorg/w3c/dom/Text;
    if-eqz v21, :cond_7

    .line 1352
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v4, Lcom/isw/android/corp/bean/CompanyPushBean;->c:Ljava/lang/String;

    .line 1355
    .end local v10           #e:Lorg/w3c/dom/Element;
    .end local v21           #text:Lorg/w3c/dom/Text;
    :cond_7
    const-string v24, "n"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 1356
    .local v16, n:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    if-lez v24, :cond_8

    .line 1357
    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 1358
    .restart local v10       #e:Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Text;

    .line 1359
    .restart local v21       #text:Lorg/w3c/dom/Text;
    if-eqz v21, :cond_8

    .line 1360
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v4, Lcom/isw/android/corp/bean/CompanyPushBean;->n:Ljava/lang/String;

    .line 1363
    .end local v10           #e:Lorg/w3c/dom/Element;
    .end local v21           #text:Lorg/w3c/dom/Text;
    :cond_8
    const-string v24, "d"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 1364
    .local v6, d:Lorg/w3c/dom/NodeList;
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    if-lez v24, :cond_9

    .line 1365
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v6, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 1366
    .restart local v10       #e:Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Text;

    .line 1367
    .restart local v21       #text:Lorg/w3c/dom/Text;
    if-eqz v21, :cond_9

    .line 1368
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v4, Lcom/isw/android/corp/bean/CompanyPushBean;->d:Ljava/lang/String;

    .line 1372
    .end local v10           #e:Lorg/w3c/dom/Element;
    .end local v21           #text:Lorg/w3c/dom/Text;
    :cond_9
    const-string v24, "k"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 1373
    .local v14, k:Lorg/w3c/dom/NodeList;
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    if-lez v24, :cond_a

    .line 1374
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v14, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 1375
    .restart local v10       #e:Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Text;

    .line 1376
    .restart local v21       #text:Lorg/w3c/dom/Text;
    if-eqz v21, :cond_a

    .line 1377
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v4, Lcom/isw/android/corp/bean/CompanyPushBean;->k:Ljava/lang/String;

    .line 1381
    .end local v10           #e:Lorg/w3c/dom/Element;
    .end local v21           #text:Lorg/w3c/dom/Text;
    :cond_a
    const-string v24, "f"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 1382
    .local v12, f:Lorg/w3c/dom/NodeList;
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    if-lez v24, :cond_b

    .line 1383
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v12, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 1384
    .restart local v10       #e:Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Text;

    .line 1385
    .restart local v21       #text:Lorg/w3c/dom/Text;
    if-eqz v21, :cond_b

    .line 1386
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v4, Lcom/isw/android/corp/bean/CompanyPushBean;->f:Ljava/lang/String;

    .line 1390
    .end local v10           #e:Lorg/w3c/dom/Element;
    .end local v21           #text:Lorg/w3c/dom/Text;
    :cond_b
    const-string v24, "o"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 1391
    .local v17, o:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    if-lez v24, :cond_c

    .line 1392
    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 1393
    .restart local v10       #e:Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Text;

    .line 1394
    .restart local v21       #text:Lorg/w3c/dom/Text;
    if-eqz v21, :cond_c

    .line 1395
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v4, Lcom/isw/android/corp/bean/CompanyPushBean;->o:Ljava/lang/String;

    .line 1399
    .end local v10           #e:Lorg/w3c/dom/Element;
    .end local v21           #text:Lorg/w3c/dom/Text;
    :cond_c
    const-string v24, "pi"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 1400
    .local v18, pi:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    if-lez v24, :cond_d

    .line 1401
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 1402
    .restart local v10       #e:Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Text;

    .line 1403
    .restart local v21       #text:Lorg/w3c/dom/Text;
    if-eqz v21, :cond_d

    .line 1404
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v4, Lcom/isw/android/corp/bean/CompanyPushBean;->pi:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1413
    .end local v2           #a:Lorg/w3c/dom/NodeList;
    .end local v3           #b:Lorg/w3c/dom/NodeList;
    .end local v5           #c:Lorg/w3c/dom/NodeList;
    .end local v6           #d:Lorg/w3c/dom/NodeList;
    .end local v7           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v8           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9           #doc:Lorg/w3c/dom/Document;
    .end local v10           #e:Lorg/w3c/dom/Element;
    .end local v12           #f:Lorg/w3c/dom/NodeList;
    .end local v13           #i:Lorg/w3c/dom/NodeList;
    .end local v14           #k:Lorg/w3c/dom/NodeList;
    .end local v15           #m:Lorg/w3c/dom/NodeList;
    .end local v16           #n:Lorg/w3c/dom/NodeList;
    .end local v17           #o:Lorg/w3c/dom/NodeList;
    .end local v18           #pi:Lorg/w3c/dom/NodeList;
    .end local v19           #root:Lorg/w3c/dom/Element;
    .end local v20           #t:Lorg/w3c/dom/NodeList;
    .end local v21           #text:Lorg/w3c/dom/Text;
    .end local v22           #u:Lorg/w3c/dom/NodeList;
    .end local v23           #x:Lorg/w3c/dom/NodeList;
    :cond_d
    :goto_0
    return-object v4

    .line 1409
    :catch_0
    move-exception v11

    .line 1410
    .local v11, ex:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 1411
    sget-object v24, Lcom/isw/android/corp/telephony/CallUtil;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "ex: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static setPushRecord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "number"
    .parameter "timeStamp"

    .prologue
    const/4 v6, 0x1

    .line 1019
    sget-object v7, Lcom/isw/android/corp/telephony/CallUtil;->TAG:Ljava/lang/String;

    const-string v8, "setPushRecord"

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    sget-object v7, Lcom/isw/android/corp/telephony/CallUtil;->mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

    sget-object v8, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/isw/android/corp/services/WinksEngine;->NetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    .line 1021
    .local v2, netState:Z
    if-eqz v2, :cond_1

    move v1, v6

    .line 1022
    .local v1, netSta:I
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1023
    .local v3, netString:Ljava/lang/String;
    sget-object v7, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/isw/android/corp/util/WinksTools;->isWifi(Landroid/content/Context;)Z

    move-result v0

    .line 1024
    .local v0, bWifi:Z
    if-eqz v0, :cond_2

    const-string v5, "wifi"

    .line 1025
    .local v5, wifiString:Ljava/lang/String;
    :goto_1
    const-string v7, "encodePhone"

    invoke-static {v7, v6}, Lcom/isw/android/corp/util/LocalConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1026
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/isw/android/corp/util/WinksTools;->encodeCompanyPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1027
    .local v4, pushItem:Ljava/lang/String;
    sget-object v6, Lcom/isw/android/corp/util/LocalConfig;->pushRecordDir:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/isw/android/corp/util/LocalConfig;->appendToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    .end local v4           #pushItem:Ljava/lang/String;
    :cond_0
    return-void

    .line 1021
    .end local v0           #bWifi:Z
    .end local v1           #netSta:I
    .end local v3           #netString:Ljava/lang/String;
    .end local v5           #wifiString:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1024
    .restart local v0       #bWifi:Z
    .restart local v1       #netSta:I
    .restart local v3       #netString:Ljava/lang/String;
    :cond_2
    const-string v5, "nowifi"

    goto :goto_1
.end method

.method private static setSWUpdateNotification(Landroid/content/Context;Lcom/isw/android/corp/bean/CompanyPushBean;I)V
    .locals 9
    .parameter "ctx"
    .parameter "pushbean"
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 1150
    sget-object v4, Lcom/isw/android/corp/telephony/CallUtil;->TAG:Ljava/lang/String;

    const-string v5, "[setSWUpdateNotification]..."

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1151
    check-cast v1, Landroid/app/NotificationManager;

    .line 1153
    .local v1, mNotificationManager:Landroid/app/NotificationManager;
    const/4 v2, 0x0

    .line 1154
    .local v2, notification:Landroid/app/Notification;
    new-instance v2, Landroid/app/Notification;

    .end local v2           #notification:Landroid/app/Notification;
    iget-object v4, p1, Lcom/isw/android/corp/bean/CompanyPushBean;->f:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/isw/android/corp/telephony/CallUtil;->getIcon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    iget-object v5, p1, Lcom/isw/android/corp/bean/CompanyPushBean;->t:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1155
    .restart local v2       #notification:Landroid/app/Notification;
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 1156
    const/4 v0, 0x0

    .line 1157
    .local v0, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1158
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v4, Lcom/isw/android/corp/telephony/CallUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "push.a:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/isw/android/corp/bean/CompanyPushBean;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    const-string v4, "action_mode"

    iget-object v5, p1, Lcom/isw/android/corp/bean/CompanyPushBean;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1160
    const-string v4, "url"

    iget-object v5, p1, Lcom/isw/android/corp/bean/CompanyPushBean;->u:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1161
    const-string v4, "call_mode"

    iget-object v5, p1, Lcom/isw/android/corp/bean/CompanyPushBean;->c:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1162
    const-string v4, "pushnumber"

    iget-object v5, p1, Lcom/isw/android/corp/bean/CompanyPushBean;->n:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1163
    const-string v4, "action"

    iget-object v5, p1, Lcom/isw/android/corp/bean/CompanyPushBean;->k:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1164
    const-string v4, "pushid"

    iget-object v5, p1, Lcom/isw/android/corp/bean/CompanyPushBean;->pi:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1165
    sget-object v4, Lcom/isw/android/corp/telephony/CallUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "push.id:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p1, Lcom/isw/android/corp/bean/CompanyPushBean;->pi:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    const-string v4, "zdwsipush"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1189
    invoke-static {p0, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1191
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    iput-object v3, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1193
    sget v4, Lcom/isw/android/corp/util/RUtils$layout;->isw_push_view:I

    if-eqz v4, :cond_0

    .line 1194
    invoke-static {p0, p1}, Lcom/isw/android/corp/telephony/CallUtil;->makeRemoteViews(Landroid/content/Context;Lcom/isw/android/corp/bean/CompanyPushBean;)Landroid/widget/RemoteViews;

    move-result-object v4

    iput-object v4, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1202
    :goto_0
    invoke-virtual {v1, p2, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1203
    return-void

    .line 1196
    :cond_0
    iget-object v4, p1, Lcom/isw/android/corp/bean/CompanyPushBean;->m:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1197
    iget-object v4, p1, Lcom/isw/android/corp/bean/CompanyPushBean;->m:Ljava/lang/String;

    iget-object v5, p1, Lcom/isw/android/corp/bean/CompanyPushBean;->x:Ljava/lang/String;

    invoke-virtual {v2, p0, v4, v5, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 1199
    :cond_1
    iget-object v4, p1, Lcom/isw/android/corp/bean/CompanyPushBean;->t:Ljava/lang/String;

    iget-object v5, p1, Lcom/isw/android/corp/bean/CompanyPushBean;->x:Ljava/lang/String;

    invoke-virtual {v2, p0, v4, v5, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected static declared-synchronized updatePushRecord(Ljava/lang/String;)V
    .locals 24
    .parameter "timeStamp"

    .prologue
    .line 1033
    const-class v21, Lcom/isw/android/corp/telephony/CallUtil;

    monitor-enter v21

    :try_start_0
    sget-object v20, Lcom/isw/android/corp/telephony/CallUtil;->TAG:Ljava/lang/String;

    const-string v22, "updatePushRecord"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    const/4 v7, 0x0

    .line 1035
    .local v7, fr:Ljava/io/FileReader;
    sget-object v20, Lcom/isw/android/corp/telephony/CallUtil;->mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

    sget-object v22, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/isw/android/corp/services/WinksEngine;->NetworkAvailable(Landroid/content/Context;)Z

    move-result v11

    .line 1036
    .local v11, netState:Z
    if-eqz v11, :cond_1

    const/4 v10, 0x1

    .line 1037
    .local v10, netSta:I
    :goto_0
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 1038
    .local v12, netString:Ljava/lang/String;
    sget-object v20, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    invoke-static/range {v20 .. v20}, Lcom/isw/android/corp/util/WinksTools;->isWifi(Landroid/content/Context;)Z

    move-result v2

    .line 1039
    .local v2, bWifi:Z
    if-eqz v2, :cond_2

    const-string v19, "wifi"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1041
    .local v19, wifiString:Ljava/lang/String;
    :goto_1
    :try_start_1
    new-instance v6, Ljava/io/File;

    sget-object v20, Lcom/isw/android/corp/util/LocalConfig;->pushRecordDir:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1042
    .local v6, file:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1043
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1044
    .end local v7           #fr:Ljava/io/FileReader;
    .local v8, fr:Ljava/io/FileReader;
    :try_start_2
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v4, v0

    .line 1045
    .local v4, count:I
    new-array v3, v4, [C

    .line 1046
    .local v3, buffer:[C
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v3, v0, v4}, Ljava/io/FileReader;->read([CII)I

    .line 1047
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v3}, Ljava/lang/String;-><init>([C)V

    .line 1048
    .local v15, oldContent:Ljava/lang/String;
    const-string v20, ";"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 1049
    .local v17, s:[Ljava/lang/String;
    const-string v16, ""

    .line 1050
    .local v16, oldItem:Ljava/lang/String;
    const-string v14, ""

    .line 1051
    .local v14, newItem:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v9, v0, :cond_3

    .line 1059
    :goto_3
    sget-object v20, Lcom/isw/android/corp/telephony/CallUtil;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "oldItem: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "===newItem: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 1061
    .local v13, newContent:Ljava/lang/String;
    sget-object v20, Lcom/isw/android/corp/util/LocalConfig;->pushRecordDir:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-static {v13, v0}, Lcom/isw/android/corp/util/LocalConfig;->overWirteFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v7, v8

    .line 1070
    .end local v3           #buffer:[C
    .end local v4           #count:I
    .end local v6           #file:Ljava/io/File;
    .end local v8           #fr:Ljava/io/FileReader;
    .end local v9           #i:I
    .end local v13           #newContent:Ljava/lang/String;
    .end local v14           #newItem:Ljava/lang/String;
    .end local v15           #oldContent:Ljava/lang/String;
    .end local v16           #oldItem:Ljava/lang/String;
    .end local v17           #s:[Ljava/lang/String;
    .restart local v7       #fr:Ljava/io/FileReader;
    :cond_0
    :goto_4
    monitor-exit v21

    return-void

    .line 1036
    .end local v2           #bWifi:Z
    .end local v10           #netSta:I
    .end local v12           #netString:Ljava/lang/String;
    .end local v19           #wifiString:Ljava/lang/String;
    :cond_1
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1039
    .restart local v2       #bWifi:Z
    .restart local v10       #netSta:I
    .restart local v12       #netString:Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string v19, "nowifi"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 1052
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v3       #buffer:[C
    .restart local v4       #count:I
    .restart local v6       #file:Ljava/io/File;
    .restart local v8       #fr:Ljava/io/FileReader;
    .restart local v9       #i:I
    .restart local v14       #newItem:Ljava/lang/String;
    .restart local v15       #oldContent:Ljava/lang/String;
    .restart local v16       #oldItem:Ljava/lang/String;
    .restart local v17       #s:[Ljava/lang/String;
    .restart local v19       #wifiString:Ljava/lang/String;
    :cond_3
    :try_start_4
    new-instance v20, Ljava/lang/StringBuilder;

    aget-object v22, v17, v9

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, ";"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1053
    aget-object v20, v17, v9

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1054
    aget-object v20, v17, v9

    const-string v22, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 1055
    .local v18, split:[Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    aget-object v22, v18, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v22, 0x1

    aget-object v22, v18, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, ";"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v22, "\n"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v14

    .line 1056
    goto/16 :goto_3

    .line 1051
    .end local v18           #split:[Ljava/lang/String;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 1063
    .end local v3           #buffer:[C
    .end local v4           #count:I
    .end local v6           #file:Ljava/io/File;
    .end local v8           #fr:Ljava/io/FileReader;
    .end local v9           #i:I
    .end local v14           #newItem:Ljava/lang/String;
    .end local v15           #oldContent:Ljava/lang/String;
    .end local v16           #oldItem:Ljava/lang/String;
    .end local v17           #s:[Ljava/lang/String;
    .restart local v7       #fr:Ljava/io/FileReader;
    :catch_0
    move-exception v5

    .line 1064
    .local v5, e:Ljava/lang/Exception;
    :goto_5
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_4

    .line 1065
    .end local v5           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v20

    .line 1069
    :goto_6
    :try_start_6
    throw v20
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1033
    .end local v2           #bWifi:Z
    .end local v7           #fr:Ljava/io/FileReader;
    .end local v10           #netSta:I
    .end local v11           #netState:Z
    .end local v12           #netString:Ljava/lang/String;
    .end local v19           #wifiString:Ljava/lang/String;
    :catchall_1
    move-exception v20

    monitor-exit v21

    throw v20

    .line 1065
    .restart local v2       #bWifi:Z
    .restart local v6       #file:Ljava/io/File;
    .restart local v8       #fr:Ljava/io/FileReader;
    .restart local v10       #netSta:I
    .restart local v11       #netState:Z
    .restart local v12       #netString:Ljava/lang/String;
    .restart local v19       #wifiString:Ljava/lang/String;
    :catchall_2
    move-exception v20

    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto :goto_6

    .line 1063
    .end local v7           #fr:Ljava/io/FileReader;
    .restart local v8       #fr:Ljava/io/FileReader;
    :catch_1
    move-exception v5

    move-object v7, v8

    .end local v8           #fr:Ljava/io/FileReader;
    .restart local v7       #fr:Ljava/io/FileReader;
    goto :goto_5
.end method
