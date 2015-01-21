.class Lcom/mediatek/calendarimporter/ShowPreviewActivity$4;
.super Landroid/os/Handler;
.source "ShowPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/calendarimporter/ShowPreviewActivity;->serviceConnected(Lcom/mediatek/calendarimporter/service/VCalService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/calendarimporter/ShowPreviewActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/calendarimporter/ShowPreviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity$4;->this$0:Lcom/mediatek/calendarimporter/ShowPreviewActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 163
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 187
    :goto_0
    :pswitch_0
    return-void

    .line 165
    :pswitch_1
    const-string v0, "ShowPreviewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceConnected,handlerMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget v0, p1, Landroid/os/Message;->arg2:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity$4;->this$0:Lcom/mediatek/calendarimporter/ShowPreviewActivity;

    const v1, 0x7f040017

    #calls: Lcom/mediatek/calendarimporter/ShowPreviewActivity;->setImportErrorView(I)V
    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->access$100(Lcom/mediatek/calendarimporter/ShowPreviewActivity;I)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity$4;->this$0:Lcom/mediatek/calendarimporter/ShowPreviewActivity;

    #getter for: Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mLoadingView:Landroid/view/View;
    invoke-static {v0}, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->access$200(Lcom/mediatek/calendarimporter/ShowPreviewActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity$4;->this$0:Lcom/mediatek/calendarimporter/ShowPreviewActivity;

    #getter for: Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mPreviewText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->access$300(Lcom/mediatek/calendarimporter/ShowPreviewActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity$4;->this$0:Lcom/mediatek/calendarimporter/ShowPreviewActivity;

    #getter for: Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mPreviewText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->access$300(Lcom/mediatek/calendarimporter/ShowPreviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity$4;->this$0:Lcom/mediatek/calendarimporter/ShowPreviewActivity;

    #getter for: Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mImportButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->access$400(Lcom/mediatek/calendarimporter/ShowPreviewActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity$4;->this$0:Lcom/mediatek/calendarimporter/ShowPreviewActivity;

    #getter for: Lcom/mediatek/calendarimporter/ShowPreviewActivity;->mMainPreviewView:Landroid/view/View;
    invoke-static {v0}, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->access$500(Lcom/mediatek/calendarimporter/ShowPreviewActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 181
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/calendarimporter/ShowPreviewActivity$4;->this$0:Lcom/mediatek/calendarimporter/ShowPreviewActivity;

    const v1, 0x7f04000f

    #calls: Lcom/mediatek/calendarimporter/ShowPreviewActivity;->setImportErrorView(I)V
    invoke-static {v0, v1}, Lcom/mediatek/calendarimporter/ShowPreviewActivity;->access$100(Lcom/mediatek/calendarimporter/ShowPreviewActivity;I)V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
