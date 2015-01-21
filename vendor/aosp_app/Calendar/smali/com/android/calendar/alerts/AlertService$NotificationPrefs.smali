.class Lcom/android/calendar/alerts/AlertService$NotificationPrefs;
.super Ljava/lang/Object;
.source "AlertService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/alerts/AlertService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationPrefs"
.end annotation


# static fields
.field private static final EMPTY_RINGTONE:Ljava/lang/String; = ""


# instance fields
.field private context:Landroid/content/Context;

.field private defaultVibrate:I

.field private doPopup:I

.field private prefs:Landroid/content/SharedPreferences;

.field quietUpdate:Z

.field private ringtone:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Z)V
    .locals 1
    .parameter "context"
    .parameter "prefs"
    .parameter "quietUpdate"

    .prologue
    const/4 v0, -0x1

    .line 883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 877
    iput v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->doPopup:I

    .line 878
    iput v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->defaultVibrate:I

    .line 879
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->ringtone:Ljava/lang/String;

    .line 884
    iput-object p1, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->context:Landroid/content/Context;

    .line 885
    iput-object p2, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->prefs:Landroid/content/SharedPreferences;

    .line 886
    iput-boolean p3, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->quietUpdate:Z

    .line 887
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/alerts/AlertService$NotificationPrefs;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 871
    invoke-direct {p0}, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->getDefaultVibrate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/calendar/alerts/AlertService$NotificationPrefs;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 871
    invoke-direct {p0}, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->getRingtoneAndSilence()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/alerts/AlertService$NotificationPrefs;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 871
    invoke-direct {p0}, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->getDoPopup()Z

    move-result v0

    return v0
.end method

.method private getDefaultVibrate()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 901
    iget v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->defaultVibrate:I

    if-gez v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v0, v3}, Lcom/android/calendar/Utils;->getDefaultVibrate(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->defaultVibrate:I

    .line 904
    :cond_0
    iget v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->defaultVibrate:I

    if-ne v0, v1, :cond_2

    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 902
    goto :goto_0

    :cond_2
    move v1, v2

    .line 904
    goto :goto_1
.end method

.method private getDoPopup()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 890
    iget v2, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->doPopup:I

    if-gez v2, :cond_0

    .line 891
    iget-object v2, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "preferences_alerts_popup"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 892
    iput v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->doPopup:I

    .line 897
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->doPopup:I

    if-ne v2, v0, :cond_2

    :goto_1
    return v0

    .line 894
    :cond_1
    iput v1, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->doPopup:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 897
    goto :goto_1
.end method

.method private getRingtoneAndSilence()Ljava/lang/String;
    .locals 4

    .prologue
    .line 908
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->ringtone:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 909
    iget-boolean v1, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->quietUpdate:Z

    if-eqz v1, :cond_1

    .line 910
    const-string v1, ""

    iput-object v1, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->ringtone:Ljava/lang/String;

    .line 915
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->ringtone:Ljava/lang/String;

    .line 916
    .local v0, retVal:Ljava/lang/String;
    const-string v1, ""

    iput-object v1, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->ringtone:Ljava/lang/String;

    .line 917
    return-object v0

    .line 912
    .end local v0           #retVal:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "preferences_alerts_ringtone"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/alerts/AlertService$NotificationPrefs;->ringtone:Ljava/lang/String;

    goto :goto_0
.end method
