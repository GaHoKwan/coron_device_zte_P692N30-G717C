.class Lcom/mediatek/contacts/activities/SpeedDialManageActivity$4;
.super Ljava/lang/Object;
.source "SpeedDialManageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->confirmRemovePosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 648
    iput-object p1, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$4;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 651
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$4;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    const/4 v1, -0x1

    #setter for: Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mRemovePosition:I
    invoke-static {v0, v1}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$202(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;I)I

    .line 652
    iget-object v0, p0, Lcom/mediatek/contacts/activities/SpeedDialManageActivity$4;->this$0:Lcom/mediatek/contacts/activities/SpeedDialManageActivity;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->mRemoveConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/mediatek/contacts/activities/SpeedDialManageActivity;->access$302(Lcom/mediatek/contacts/activities/SpeedDialManageActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 653
    return-void
.end method