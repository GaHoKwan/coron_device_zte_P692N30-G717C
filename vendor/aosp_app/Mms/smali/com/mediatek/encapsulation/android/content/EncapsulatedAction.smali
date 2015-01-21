.class public Lcom/mediatek/encapsulation/android/content/EncapsulatedAction;
.super Ljava/lang/Object;
.source "EncapsulatedAction.java"


# static fields
.field public static final ACTION_SMS_DEFAULT_SIM_CHANGED:Ljava/lang/String;

.field public static final SIM_SETTINGS_INFO_CHANGED:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    sput-object v0, Lcom/mediatek/encapsulation/android/content/EncapsulatedAction;->SIM_SETTINGS_INFO_CHANGED:Ljava/lang/String;

    .line 52
    const-string v0, "android.intent.action.SMS_DEFAULT_SIM"

    sput-object v0, Lcom/mediatek/encapsulation/android/content/EncapsulatedAction;->ACTION_SMS_DEFAULT_SIM_CHANGED:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
