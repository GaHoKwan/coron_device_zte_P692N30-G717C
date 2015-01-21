.class Leu/chainfire/supersu/MainActivity$4$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic 鷭:Leu/chainfire/supersu/MainActivity$4$1;


# direct methods
.method constructor <init>(Leu/chainfire/supersu/MainActivity$4$1;)V
    .locals 0

    .line 0
    iput-object p1, p0, Leu/chainfire/supersu/MainActivity$4$1$2;->鷭:Leu/chainfire/supersu/MainActivity$4$1;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    .line 0
    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$4$1$2;->鷭:Leu/chainfire/supersu/MainActivity$4$1;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$4$1;->鷭(Leu/chainfire/supersu/MainActivity$4$1;)Leu/chainfire/supersu/MainActivity$4;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$4;->鷭(Leu/chainfire/supersu/MainActivity$4;)Leu/chainfire/supersu/Installer;

    move-result-object p1

    iget-object v0, p0, Leu/chainfire/supersu/MainActivity$4$1$2;->鷭:Leu/chainfire/supersu/MainActivity$4$1;

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$4$1;->鷭(Leu/chainfire/supersu/MainActivity$4$1;)Leu/chainfire/supersu/MainActivity$4;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/MainActivity$4;->櫯(Leu/chainfire/supersu/MainActivity$4;)Leu/chainfire/supersu/MainActivity;

    move-result-object p2

    sget-boolean v0, Leu/chainfire/supersu/Constants;->Ą:Z

    if-nez v0, :cond_0

    const-string v0, "chattr"

    invoke-static {v0}, Leu/chainfire/supersu/Installer;->鷭(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Leu/chainfire/supersu/Asset;->鷭(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "supersu"

    invoke-static {v0}, Leu/chainfire/supersu/Installer;->鷭(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Leu/chainfire/supersu/Asset;->鷭(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "install-recovery.sh"

    invoke-static {p2, v0}, Leu/chainfire/supersu/Asset;->鷭(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "99SuperSUDaemon"

    invoke-static {p2, v0}, Leu/chainfire/supersu/Asset;->鷭(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "supersu.zip"

    invoke-static {p2, v0}, Leu/chainfire/supersu/Asset;->鷭(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "rm /cache/recovery/*"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "cat %s > /cache/recovery/chattr"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "cat %s > /cache/recovery/su"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "cat %s > /cache/recovery/install-recovery.sh"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "cat %s > /cache/recovery/99SuperSUDaemon"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "cat %s > /cache/recovery/update.zip"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "echo 1 > %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "/system/etc/.installed_su_daemon"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "chown 0.0 /cache/recovery/chattr"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "chown 0.0 /cache/recovery/su"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "chown 0.0 /cache/recovery/install-recovery.sh"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "chown 0.0 /cache/recovery/99SuperSUDaemon"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "chown 0.0 /cache/recovery/update.zip"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "chmod 755 /cache/recovery/chattr"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "chmod 644 /cache/recovery/su"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "chown 644 /cache/recovery/install-recovery.sh"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "chown 644 /cache/recovery/99SuperSUDaemon"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "chmod 644 /cache/recovery/.installed_su_daemon"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "chmod 644 /cache/recovery/update.zip"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "echo --update_package=/cache/recovery/update.zip > /cache/recovery/command"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->鷭([Ljava/lang/String;)Ljava/util/ArrayList;

    move-object v5, p2

    invoke-static {p2}, Leu/chainfire/supersu/Constants;->鷭(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "SuperSU"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900c8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/Installer$7;

    invoke-direct {v1, p1, v5}, Leu/chainfire/supersu/Installer$7;-><init>(Leu/chainfire/supersu/Installer;Leu/chainfire/supersu/MainActivity;)V

    const v2, 0x7f090004

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 245
    :cond_0
    return-void
.end method
