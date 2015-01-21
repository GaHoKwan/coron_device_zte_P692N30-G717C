.class final Lcom/zte/heartyservice/main/HeartyServiceApp$11;
.super Ljava/lang/Object;
.source "HeartyServiceApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/main/HeartyServiceApp;->realShowFailedDialog(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichBtn"

    .prologue
    .line 3670
    const/4 v0, 0x1

    sput-boolean v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->skipEnter:Z

    .line 3671
    return-void
.end method
