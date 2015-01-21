.class Lcom/android/providers/media/RingtonePickerActivity$1;
.super Ljava/lang/Object;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/RingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/RingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/providers/media/RingtonePickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    #getter for: Lcom/android/providers/media/RingtonePickerActivity;->mMoreRingtonesPos:I
    invoke-static {v1}, Lcom/android/providers/media/RingtonePickerActivity;->access$000(Lcom/android/providers/media/RingtonePickerActivity;)I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v1, "application/ogg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v1, "application/x-ogg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 137
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    #setter for: Lcom/android/providers/media/RingtonePickerActivity;->mClickedPos:I
    invoke-static {v1, p2}, Lcom/android/providers/media/RingtonePickerActivity;->access$102(Lcom/android/providers/media/RingtonePickerActivity;I)I

    .line 133
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    const/4 v2, 0x0

    #calls: Lcom/android/providers/media/RingtonePickerActivity;->playRingtone(II)V
    invoke-static {v1, p2, v2}, Lcom/android/providers/media/RingtonePickerActivity;->access$200(Lcom/android/providers/media/RingtonePickerActivity;II)V

    .line 135
    iget-object v1, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    iget-object v2, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    #getter for: Lcom/android/providers/media/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;
    invoke-static {v2}, Lcom/android/providers/media/RingtonePickerActivity;->access$500(Lcom/android/providers/media/RingtonePickerActivity;)Landroid/media/RingtoneManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/media/RingtonePickerActivity$1;->this$0:Lcom/android/providers/media/RingtonePickerActivity;

    #calls: Lcom/android/providers/media/RingtonePickerActivity;->getRingtoneManagerPosition(I)I
    invoke-static {v3, p2}, Lcom/android/providers/media/RingtonePickerActivity;->access$400(Lcom/android/providers/media/RingtonePickerActivity;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v2

    #setter for: Lcom/android/providers/media/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/android/providers/media/RingtonePickerActivity;->access$302(Lcom/android/providers/media/RingtonePickerActivity;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_0
.end method
