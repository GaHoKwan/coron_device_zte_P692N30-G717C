.class Ltmsdk/bg/tcc/SmsChecker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdk/common/module/update/IUpdateObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/bg/tcc/SmsChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic wQ:Ltmsdk/bg/tcc/SmsChecker;


# direct methods
.method constructor <init>(Ltmsdk/bg/tcc/SmsChecker;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Ltmsdk/bg/tcc/SmsChecker$1;->wQ:Ltmsdk/bg/tcc/SmsChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ltmsdk/common/module/update/UpdateInfo;)V
    .locals 4
    .parameter "updateInfo"

    .prologue
    .line 83
    const-class v2, Ltmsdk/common/module/update/UpdateManager;

    invoke-static {v2}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v1

    check-cast v1, Ltmsdk/common/module/update/UpdateManager;

    .line 84
    .local v1, updateManager:Ltmsdk/common/module/update/UpdateManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ltmsdk/common/module/update/UpdateManager;->getFileSavePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Ltmsdk/common/module/update/UpdateInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, path:Ljava/lang/String;
    iget-object v2, p0, Ltmsdk/bg/tcc/SmsChecker$1;->wQ:Ltmsdk/bg/tcc/SmsChecker;

    invoke-static {v2}, Ltmsdk/bg/tcc/SmsChecker;->a(Ltmsdk/bg/tcc/SmsChecker;)I

    move-result v2

    const/4 v3, 0x3

    invoke-static {v2, v3, v0}, Ltmsdk/bg/tcc/SmsChecker;->a(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Ltmsdk/bg/tcc/SmsChecker$1;->wQ:Ltmsdk/bg/tcc/SmsChecker;

    invoke-static {v2}, Ltmsdk/bg/tcc/SmsChecker;->a(Ltmsdk/bg/tcc/SmsChecker;)I

    move-result v2

    const/16 v3, 0x8

    invoke-static {v2, v3, v0}, Ltmsdk/bg/tcc/SmsChecker;->b(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 86
    iget-object v2, p0, Ltmsdk/bg/tcc/SmsChecker$1;->wQ:Ltmsdk/bg/tcc/SmsChecker;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ltmsdk/bg/tcc/SmsChecker;->a(Ltmsdk/bg/tcc/SmsChecker;Z)Z

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v2, p0, Ltmsdk/bg/tcc/SmsChecker$1;->wQ:Ltmsdk/bg/tcc/SmsChecker;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ltmsdk/bg/tcc/SmsChecker;->a(Ltmsdk/bg/tcc/SmsChecker;Z)Z

    goto :goto_0
.end method
