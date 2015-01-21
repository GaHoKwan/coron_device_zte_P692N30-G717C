.class public Luh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic a:Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Luh;->a:Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;

    iput-object p2, p0, Luh;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 223
    iget-object v0, p0, Luh;->a:Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;

    iget-object v1, p0, Luh;->a:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v2}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;Landroid/os/Bundle;ZZ)V

    .line 224
    return-void
.end method
