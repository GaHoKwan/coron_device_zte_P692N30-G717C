.class public Luj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic a:Landroid/os/Bundle;

.field final synthetic a:Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;Landroid/os/Bundle;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Luj;->a:Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;

    iput-object p2, p0, Luj;->a:Landroid/os/Bundle;

    iput-object p3, p0, Luj;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Luj;->a:Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;

    iget-object v1, p0, Luj;->a:Landroid/os/Bundle;

    iget-object v2, p0, Luj;->a:Landroid/app/AlertDialog;

    invoke-static {v0, v1, v2}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;Landroid/os/Bundle;Landroid/app/AlertDialog;)V

    .line 267
    return-void
.end method
