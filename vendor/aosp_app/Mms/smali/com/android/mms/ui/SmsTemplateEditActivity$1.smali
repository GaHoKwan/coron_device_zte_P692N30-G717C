.class Lcom/android/mms/ui/SmsTemplateEditActivity$1;
.super Ljava/lang/Object;
.source "SmsTemplateEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SmsTemplateEditActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SmsTemplateEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$1;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 136
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsTemplateEditActivity$1;->this$0:Lcom/android/mms/ui/SmsTemplateEditActivity;

    #calls: Lcom/android/mms/ui/SmsTemplateEditActivity;->addQuickText()V
    invoke-static {v0}, Lcom/android/mms/ui/SmsTemplateEditActivity;->access$000(Lcom/android/mms/ui/SmsTemplateEditActivity;)V

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x7f0f0192
        :pswitch_0
    .end packed-switch
.end method
