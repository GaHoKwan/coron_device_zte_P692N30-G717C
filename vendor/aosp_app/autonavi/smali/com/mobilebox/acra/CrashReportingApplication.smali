.class public abstract Lcom/mobilebox/acra/CrashReportingApplication;
.super Landroid/app/Application;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field protected static final LOG_TAG:Ljava/lang/String; = "ACRA"

.field public static final NOTIF_CRASH_ID:I = 0x29a

.field public static final PREF_DISABLE_ACRA:Ljava/lang/String; = "acra.disable"

.field public static final RES_DIALOG_COMMENT_PROMPT:Ljava/lang/String; = "RES_DIALOG_COMMENT_PROMPT"

.field public static final RES_DIALOG_ICON:Ljava/lang/String; = "RES_DIALOG_ICON"

.field public static final RES_DIALOG_OK_TOAST:Ljava/lang/String; = "RES_DIALOG_OK_TOAST"

.field public static final RES_DIALOG_TEXT:Ljava/lang/String; = "RES_DIALOG_TEXT"

.field public static final RES_DIALOG_TITLE:Ljava/lang/String; = "RES_DIALOG_TITLE"

.field public static final RES_NOTIF_ICON:Ljava/lang/String; = "RES_NOTIF_ICON"

.field public static final RES_NOTIF_TEXT:Ljava/lang/String; = "RES_NOTIF_TEXT"

.field public static final RES_NOTIF_TICKER_TEXT:Ljava/lang/String; = "RES_NOTIF_TICKER_TEXT"

.field public static final RES_NOTIF_TITLE:Ljava/lang/String; = "RES_NOTIF_TITLE"

.field public static final RES_TOAST_TEXT:Ljava/lang/String; = "RES_TOAST_TEXT"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private initAcra()V
    .locals 3

    invoke-static {}, Lcom/mobilebox/acra/c;->a()Lcom/mobilebox/acra/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mobilebox/acra/CrashReportingApplication;->getFormUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobilebox/acra/c;->a(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/mobilebox/acra/CrashReportingApplication;->getReportingInteractionMode()Lcom/mobilebox/acra/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobilebox/acra/c;->a(Lcom/mobilebox/acra/j;)V

    invoke-virtual {p0}, Lcom/mobilebox/acra/CrashReportingApplication;->getCrashResources()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobilebox/acra/c;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/mobilebox/acra/CrashReportingApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mobilebox/acra/c;->a(Landroid/content/Context;)V

    sget-object v1, Lcom/mobilebox/acra/i;->b:Lcom/mobilebox/acra/i;

    const-string v2, "sdcard/crashreport"

    invoke-virtual {v0, v1, v2}, Lcom/mobilebox/acra/c;->a(Lcom/mobilebox/acra/i;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCrashResources()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getFormId()Ljava/lang/String;
.end method

.method public getFormUri()Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://spreadsheets.google.com/formResponse?formkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mobilebox/acra/CrashReportingApplication;->getFormId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&amp;ifq"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method getReportingInteractionMode()Lcom/mobilebox/acra/j;
    .locals 2

    invoke-virtual {p0}, Lcom/mobilebox/acra/CrashReportingApplication;->getCrashResources()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "RES_TOAST_TEXT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/mobilebox/acra/j;->c:Lcom/mobilebox/acra/j;

    :goto_0
    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "RES_NOTIF_TICKER_TEXT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "RES_NOTIF_TEXT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "RES_NOTIF_TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "RES_DIALOG_TEXT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mobilebox/acra/j;->b:Lcom/mobilebox/acra/j;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/mobilebox/acra/j;->a:Lcom/mobilebox/acra/j;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :try_start_0
    const-string v2, "acra.disable"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/mobilebox/acra/CrashReportingApplication;->initAcra()V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "acra.disable"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mobilebox/acra/c;->a()Lcom/mobilebox/acra/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobilebox/acra/c;->f()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/mobilebox/acra/CrashReportingApplication;->initAcra()V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
