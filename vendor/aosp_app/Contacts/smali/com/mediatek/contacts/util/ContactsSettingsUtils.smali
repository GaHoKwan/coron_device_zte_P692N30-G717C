.class public Lcom/mediatek/contacts/util/ContactsSettingsUtils;
.super Ljava/lang/Object;
.source "ContactsSettingsUtils.java"


# static fields
.field public static final DEFAULT_SIM_NOT_SET:J = -0x5L

.field public static final DEFAULT_SIM_SETTING_ALWAYS_ASK:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "ContactsSettingsUtils"

.field public static final VOICE_CALL_SIM_SETTING_INTERNET:J = -0x2L

.field private static sMe:Lcom/mediatek/contacts/util/ContactsSettingsUtils;


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/mediatek/contacts/util/ContactsSettingsUtils;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method

.method public static getDefaultSIMForVideoCall()J
    .locals 2

    .prologue
    .line 36
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getDefaultSIMForVoiceCall()J
    .locals 2

    .prologue
    .line 32
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getInstance()Lcom/mediatek/contacts/util/ContactsSettingsUtils;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/mediatek/contacts/util/ContactsSettingsUtils;->sMe:Lcom/mediatek/contacts/util/ContactsSettingsUtils;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/mediatek/contacts/util/ContactsSettingsUtils;

    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/util/ContactsSettingsUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/contacts/util/ContactsSettingsUtils;->sMe:Lcom/mediatek/contacts/util/ContactsSettingsUtils;

    .line 28
    :cond_0
    sget-object v0, Lcom/mediatek/contacts/util/ContactsSettingsUtils;->sMe:Lcom/mediatek/contacts/util/ContactsSettingsUtils;

    return-object v0
.end method


# virtual methods
.method protected registerSettingsObserver()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method
