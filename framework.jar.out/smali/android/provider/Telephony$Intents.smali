.class public final Landroid/provider/Telephony$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final ACTION_DUAL_SIM_MODE_SELECT:Ljava/lang/String; = "android.provider.Telephony.DUAL_SIM_MODE_SELECT"

.field public static final ACTION_GPRS_CONNECTION_TYPE_SELECT:Ljava/lang/String; = "android.provider.Telephony.GPRS_CONNECTION_TYPE_SELECT"

.field public static final ACTION_REMOVE_IDLE_TEXT:Ljava/lang/String; = "android.intent.aciton.stk.REMOVE_IDLE_TEXT"

.field public static final ACTION_REMOVE_IDLE_TEXT_2:Ljava/lang/String; = "android.intent.aciton.stk.REMOVE_IDLE_TEXT_2"

.field public static final ACTION_UNLOCK_KEYGUARD:Ljava/lang/String; = "android.provider.Telephony.UNLOCK_KEYGUARD"

.field public static final EXTRA_PLMN:Ljava/lang/String; = "plmn"

.field public static final EXTRA_SHOW_PLMN:Ljava/lang/String; = "showPlmn"

.field public static final EXTRA_SHOW_SPN:Ljava/lang/String; = "showSpn"

.field public static final EXTRA_SPN:Ljava/lang/String; = "spn"

.field public static final SECRET_CODE_ACTION:Ljava/lang/String; = "android.provider.Telephony.SECRET_CODE"

.field public static final SPN_STRINGS_UPDATED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SPN_STRINGS_UPDATED"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3414
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3416
    return-void
.end method
