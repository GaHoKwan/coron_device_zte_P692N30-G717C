.class public Lcom/android/phone/CallerInfoAsyncQuery;
.super Ljava/lang/Object;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;,
        Lcom/android/phone/CallerInfoAsyncQuery$Pairs;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static FEATURE_CHINA_LOCATION_ENABLED:Z = false

.field public static FEATURE_GOOGLE_LOCATION_ENABLED:Z = false

.field public static FEATURE_YELLOW_PAGE_ENABLED:Z = false

.field private static final QUERY_TOKEN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "PhoneUtils"

.field private static final YP_TOKEN:I = 0x1

.field public static isYPcontact:Z

.field private static mInited:Z


# instance fields
.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/CallerInfoAsyncQuery$Pairs;",
            ">;"
        }
    .end annotation
.end field

.field private mOnQueryCompleteListenerInterception:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

.field private mRealQueryInstance:Lcom/android/internal/telephony/CallerInfoAsyncQuery;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 22
    sput-boolean v1, Lcom/android/phone/CallerInfoAsyncQuery;->FEATURE_YELLOW_PAGE_ENABLED:Z

    .line 23
    sput-boolean v1, Lcom/android/phone/CallerInfoAsyncQuery;->FEATURE_CHINA_LOCATION_ENABLED:Z

    .line 24
    sput-boolean v0, Lcom/android/phone/CallerInfoAsyncQuery;->FEATURE_GOOGLE_LOCATION_ENABLED:Z

    .line 44
    sput-boolean v0, Lcom/android/phone/CallerInfoAsyncQuery;->isYPcontact:Z

    .line 266
    sput-boolean v0, Lcom/android/phone/CallerInfoAsyncQuery;->mInited:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallerInfoAsyncQuery;->mListeners:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Lcom/android/phone/CallerInfoAsyncQuery$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallerInfoAsyncQuery$1;-><init>(Lcom/android/phone/CallerInfoAsyncQuery;)V

    iput-object v0, p0, Lcom/android/phone/CallerInfoAsyncQuery;->mOnQueryCompleteListenerInterception:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallerInfoAsyncQuery;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/phone/CallerInfoAsyncQuery;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static initFeatures(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 269
    sget-boolean v0, Lcom/android/phone/CallerInfoAsyncQuery;->mInited:Z

    if-eqz v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 272
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/CallerInfoAsyncQuery;->mInited:Z

    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/CallerInfoAsyncQuery;->FEATURE_YELLOW_PAGE_ENABLED:Z

    .line 274
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/CallerInfoAsyncQuery;->FEATURE_CHINA_LOCATION_ENABLED:Z

    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/CallerInfoAsyncQuery;->FEATURE_GOOGLE_LOCATION_ENABLED:Z

    goto :goto_0
.end method

.method public static startQuery(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/CallerInfoAsyncQuery;
    .locals 4
    .parameter "token"
    .parameter "context"
    .parameter "contactRef"
    .parameter "listener"
    .parameter "cookie"

    .prologue
    .line 50
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "my startQuery uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v0, Lcom/android/phone/CallerInfoAsyncQuery;

    invoke-direct {v0}, Lcom/android/phone/CallerInfoAsyncQuery;-><init>()V

    .line 52
    .local v0, sInstance:Lcom/android/phone/CallerInfoAsyncQuery;
    iget-object v1, v0, Lcom/android/phone/CallerInfoAsyncQuery;->mOnQueryCompleteListenerInterception:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {p0, p1, p2, v1, p4}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/CallerInfoAsyncQuery;->mRealQueryInstance:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 54
    iget-object v1, v0, Lcom/android/phone/CallerInfoAsyncQuery;->mListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/phone/CallerInfoAsyncQuery$Pairs;

    invoke-direct {v2, p3, p4}, Lcom/android/phone/CallerInfoAsyncQuery$Pairs;-><init>(Lcom/android/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-static {p1}, Lcom/android/phone/CallerInfoAsyncQuery;->initFeatures(Landroid/content/Context;)V

    .line 57
    sget-boolean v1, Lcom/android/phone/CallerInfoAsyncQuery;->FEATURE_YELLOW_PAGE_ENABLED:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/phone/CallerInfoAsyncQuery;->FEATURE_CHINA_LOCATION_ENABLED:Z

    if-eqz v1, :cond_0

    .line 63
    :cond_0
    return-object v0
.end method

.method public static startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/CallerInfoAsyncQuery;
    .locals 4
    .parameter "token"
    .parameter "context"
    .parameter "number"
    .parameter "listener"
    .parameter "cookie"

    .prologue
    .line 69
    const-string v1, "PhoneUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "my startQuery number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v0, Lcom/android/phone/CallerInfoAsyncQuery;

    invoke-direct {v0}, Lcom/android/phone/CallerInfoAsyncQuery;-><init>()V

    .line 71
    .local v0, sInstance:Lcom/android/phone/CallerInfoAsyncQuery;
    iget-object v1, v0, Lcom/android/phone/CallerInfoAsyncQuery;->mOnQueryCompleteListenerInterception:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {p0, p1, p2, v1, p4}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/CallerInfoAsyncQuery;->mRealQueryInstance:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 73
    iget-object v1, v0, Lcom/android/phone/CallerInfoAsyncQuery;->mListeners:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/phone/CallerInfoAsyncQuery$Pairs;

    invoke-direct {v2, p3, p4}, Lcom/android/phone/CallerInfoAsyncQuery$Pairs;-><init>(Lcom/android/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-static {p1}, Lcom/android/phone/CallerInfoAsyncQuery;->initFeatures(Landroid/content/Context;)V

    .line 75
    sget-boolean v1, Lcom/android/phone/CallerInfoAsyncQuery;->FEATURE_YELLOW_PAGE_ENABLED:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/phone/CallerInfoAsyncQuery;->FEATURE_CHINA_LOCATION_ENABLED:Z

    if-eqz v1, :cond_1

    .line 77
    :cond_0
    const/4 v1, 0x1

    iget-object v2, v0, Lcom/android/phone/CallerInfoAsyncQuery;->mOnQueryCompleteListenerInterception:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v1, p1, p2, v2, p4}, Lcom/android/phone/BusinessCard;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 80
    :cond_1
    return-object v0
.end method

.method public static startQueryGemini(ILandroid/content/Context;Ljava/lang/String;Lcom/android/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;I)Lcom/android/phone/CallerInfoAsyncQuery;
    .locals 7
    .parameter "token"
    .parameter "context"
    .parameter "number"
    .parameter "listener"
    .parameter "cookie"
    .parameter "simId"

    .prologue
    .line 85
    const-string v0, "PhoneUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "my startQueryGemini number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v6, Lcom/android/phone/CallerInfoAsyncQuery;

    invoke-direct {v6}, Lcom/android/phone/CallerInfoAsyncQuery;-><init>()V

    .line 87
    .local v6, sInstance:Lcom/android/phone/CallerInfoAsyncQuery;
    iget-object v3, v6, Lcom/android/phone/CallerInfoAsyncQuery;->mOnQueryCompleteListenerInterception:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQueryGemini(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;I)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    move-result-object v0

    iput-object v0, v6, Lcom/android/phone/CallerInfoAsyncQuery;->mRealQueryInstance:Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 89
    iget-object v0, v6, Lcom/android/phone/CallerInfoAsyncQuery;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/phone/CallerInfoAsyncQuery$Pairs;

    invoke-direct {v1, p3, p4}, Lcom/android/phone/CallerInfoAsyncQuery$Pairs;-><init>(Lcom/android/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-static {p1}, Lcom/android/phone/CallerInfoAsyncQuery;->initFeatures(Landroid/content/Context;)V

    .line 91
    sget-boolean v0, Lcom/android/phone/CallerInfoAsyncQuery;->FEATURE_YELLOW_PAGE_ENABLED:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/phone/CallerInfoAsyncQuery;->FEATURE_CHINA_LOCATION_ENABLED:Z

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    const/4 v0, 0x1

    iget-object v1, v6, Lcom/android/phone/CallerInfoAsyncQuery;->mOnQueryCompleteListenerInterception:Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v0, p1, p2, v1, p4}, Lcom/android/phone/BusinessCard;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 96
    :cond_1
    return-object v6
.end method


# virtual methods
.method public addQueryListener(ILcom/android/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V
    .locals 2
    .parameter "token"
    .parameter "listener"
    .parameter "cookie"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/phone/CallerInfoAsyncQuery;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/phone/CallerInfoAsyncQuery$Pairs;

    invoke-direct {v1, p2, p3}, Lcom/android/phone/CallerInfoAsyncQuery$Pairs;-><init>(Lcom/android/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method
