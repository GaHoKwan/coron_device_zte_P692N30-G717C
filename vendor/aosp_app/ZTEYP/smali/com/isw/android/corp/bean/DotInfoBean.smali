.class public Lcom/isw/android/corp/bean/DotInfoBean;
.super Ljava/lang/Object;
.source "DotInfoBean.java"


# static fields
.field public static final ADCCOMPANY:Ljava/lang/String; = "ADCCOMPANY"

.field public static final AN:Ljava/lang/String; = "AN"

.field public static final AV:Ljava/lang/String; = "AV"

.field public static final CALLCENTERNUMBER:Ljava/lang/String; = "callcenternumber"

.field public static final CALLCENTERTIPS:Ljava/lang/String; = "callcentertips"

.field public static final COMPANYID:Ljava/lang/String; = "COMPANYID"

.field public static final COMPANYIMG:Ljava/lang/String; = "COMPANYIMG"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DOTCOMMURL:Ljava/lang/String; = "DOTCOMMURL"

.field public static final DOTICONURL:Ljava/lang/String; = "DOTICONURL"

.field public static final DOTID:Ljava/lang/String; = "DOTID"

.field public static final DOTIMG:Ljava/lang/String; = "DOTIMG"

.field public static final DOTMATCH:Ljava/lang/String; = "DOTMATCH"

.field public static final DOTMEDIAURL:Ljava/lang/String; = "DOTMEDIAURL"

.field public static final DOTMODEL:Ljava/lang/String; = "dotmodel"

.field public static final DOTTIPS:Ljava/lang/String; = "dottips"

.field public static final IMEI:Ljava/lang/String; = "IMEI"

.field public static final IMSI:Ljava/lang/String; = "IMSI"

.field public static final INFO:Ljava/lang/String; = "INFO"

.field public static final MODEL:Ljava/lang/String; = "MODEL"

.field public static final NAME:Ljava/lang/String; = "NAME"

.field public static final PHONE:Ljava/lang/String; = "PHONE"

.field public static final UPDATEPKGPERIOD:Ljava/lang/String; = "UPDATEPKGPERIOD"

.field public static final WINKS:Ljava/lang/String; = "WINKS"


# instance fields
.field public adccompany:Ljava/lang/String;

.field public an:Ljava/lang/String;

.field public av:Ljava/lang/String;

.field public callcenternumber:Ljava/lang/String;

.field public callcentertips:Ljava/lang/String;

.field public companyid:Ljava/lang/String;

.field public companyimg:Ljava/lang/String;

.field public companyis:Ljava/io/InputStream;

.field public dotCommUrl:Ljava/lang/String;

.field public dotIconUrl:Ljava/lang/String;

.field public dotMediaUrl:Ljava/lang/String;

.field public dotModel:Ljava/lang/String;

.field public dotid:Ljava/lang/String;

.field public dotimg:Ljava/lang/String;

.field public dotis:Ljava/io/InputStream;

.field public dotmatch:Ljava/lang/String;

.field public dottips:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public info:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public phone:Ljava/lang/String;

.field public updatePkgPeriod:Ljava/lang/String;

.field public winks:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "content://com.isw.android.corp.util.DotInfoProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/bean/DotInfoBean;->CONTENT_URI:Landroid/net/Uri;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/DotInfoBean;->phone:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/DotInfoBean;->name:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/DotInfoBean;->info:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/DotInfoBean;->dotid:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/DotInfoBean;->dotimg:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/isw/android/corp/bean/DotInfoBean;->dotis:Ljava/io/InputStream;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/DotInfoBean;->companyid:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/DotInfoBean;->companyimg:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/isw/android/corp/bean/DotInfoBean;->companyis:Ljava/io/InputStream;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/DotInfoBean;->dotIconUrl:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/DotInfoBean;->dotmatch:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/DotInfoBean;->dotCommUrl:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/DotInfoBean;->dotMediaUrl:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/DotInfoBean;->winks:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/DotInfoBean;->updatePkgPeriod:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/DotInfoBean;->dottips:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/DotInfoBean;->dotModel:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/DotInfoBean;->callcenternumber:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/DotInfoBean;->callcentertips:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/DotInfoBean;->imsi:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/DotInfoBean;->imei:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/DotInfoBean;->adccompany:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/DotInfoBean;->model:Ljava/lang/String;

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/DotInfoBean;->an:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/isw/android/corp/bean/DotInfoBean;->av:Ljava/lang/String;

    .line 71
    return-void
.end method
