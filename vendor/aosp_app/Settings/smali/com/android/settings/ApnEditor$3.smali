.class Lcom/android/settings/ApnEditor$3;
.super Ljava/lang/Object;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ApnEditor;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 809
    iput-object p1, p0, Lcom/android/settings/ApnEditor$3;->this$0:Lcom/android/settings/ApnEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/settings/ApnEditor$3;->this$0:Lcom/android/settings/ApnEditor;

    const/4 v1, 0x0

    #calls: Lcom/android/settings/ApnEditor;->validateAndSave(Z)Z
    invoke-static {v0, v1}, Lcom/android/settings/ApnEditor;->access$1700(Lcom/android/settings/ApnEditor;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/android/settings/ApnEditor$3;->this$0:Lcom/android/settings/ApnEditor;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 814
    :cond_0
    return-void
.end method