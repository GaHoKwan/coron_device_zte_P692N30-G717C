.class Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$2;
.super Ljava/lang/Object;
.source "SelectClearableCalendarsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$2;->this$0:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 228
    const-string v1, "Calendar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected view called: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/calendar/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :goto_0
    return-void

    .line 210
    :pswitch_0
    const-string v1, "Calendar"

    const-string v2, "Clear all events, ok"

    invoke-static {v1, v2}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$2;->this$0:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    #getter for: Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mContext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->access$500(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0097

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0007

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 217
    .local v0, dialog:Landroid/app/AlertDialog;
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$2;->this$0:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    #getter for: Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mContext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->access$500(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0009

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$2;->this$0:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    #getter for: Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mClearEventsDialogListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v3}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->access$600(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 220
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 221
    iget-object v1, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$2;->this$0:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    #setter for: Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v0}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->access$702(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0

    .line 224
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :pswitch_1
    const-string v1, "Calendar"

    const-string v2, "Clear all events, cancel"

    invoke-static {v1, v2}, Lcom/mediatek/calendar/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment$2;->this$0:Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;

    #getter for: Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;->access$500(Lcom/mediatek/calendar/clearevents/SelectClearableCalendarsFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x7f1000bf
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
