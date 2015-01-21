.class public Lul;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic a:Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lul;->a:Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;

    iput-object p2, p0, Lul;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 348
    :try_start_0
    iget-object v0, p0, Lul;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 349
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
