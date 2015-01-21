.class public Lcom/mobilebox/acra/AutoNaviCrashReport;
.super Lcom/mobilebox/acra/CrashReportingApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mobilebox/acra/CrashReportingApplication;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/mobilebox/acra/c;->a()Lcom/mobilebox/acra/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mobilebox/acra/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCrashResources()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "RES_NOTIF_TICKER_TEXT"

    const-string v2, "\u9ad8\u5fb7\u5bfc\u822a\u8f6f\u4ef6\u51fa\u73b0\u5f02\u5e38..."

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RES_NOTIF_TITLE"

    const-string v2, "\u9ad8\u5fb7\u5bfc\u822a\u8f6f\u4ef6\u51fa\u73b0\u5f02\u5e38..."

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RES_NOTIF_TEXT"

    const-string v2, "\u70b9\u51fb\u6b64\u5904\u53d1\u9001\u9519\u8bef\u62a5\u544a"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RES_DIALOG_TEXT"

    const-string v2, "\u5bf9\u4e0d\u8d77\uff0c\u5bfc\u822a\u8f6f\u4ef6\u51fa\u73b0\u5f02\u5e38\uff0c\u9700\u8981\u91cd\u65b0\u542f\u52a8\u3002\u60a8\u53ef\u4ee5\u53d1\u9001\u9519\u8bef\u62a5\u544a\u4ee5\u4fbf\u8f6f\u4ef6\u5f00\u53d1\u5546\u5728\u6700\u77ed\u65f6\u95f4\u5185\u89e3\u51b3\u95ee\u9898\u3002"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RES_DIALOG_COMMENT_PROMPT"

    const-string v2, "\u60a8\u8fd8\u53ef\u4ee5\u5728\u6b64\u63cf\u8ff0\u51fa\u73b0\u5f02\u5e38\u7684\u64cd\u4f5c:"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFormId()Ljava/lang/String;
    .locals 1

    const-string v0, "dHBEbjFQekUzZkppRWtZU19ESzRUOFE6MQ"

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Lcom/mobilebox/acra/CrashReportingApplication;->onCreate()V

    return-void
.end method
