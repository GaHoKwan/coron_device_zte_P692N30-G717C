.class Lcom/android/contacts/dialog/IndeterminateProgressDialog$1;
.super Ljava/lang/Object;
.source "IndeterminateProgressDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/dialog/IndeterminateProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/dialog/IndeterminateProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/contacts/dialog/IndeterminateProgressDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/contacts/dialog/IndeterminateProgressDialog$1;->this$0:Lcom/android/contacts/dialog/IndeterminateProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/contacts/dialog/IndeterminateProgressDialog$1;->this$0:Lcom/android/contacts/dialog/IndeterminateProgressDialog;

    #calls: Lcom/android/contacts/dialog/IndeterminateProgressDialog;->superDismiss()V
    invoke-static {v0}, Lcom/android/contacts/dialog/IndeterminateProgressDialog;->access$000(Lcom/android/contacts/dialog/IndeterminateProgressDialog;)V

    .line 60
    return-void
.end method
