.class public Lum;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lum;->a:Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 357
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sohu/inputmethod/multimedia/MultiMediaTransferReceiver;->a(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 358
    return-void
.end method
