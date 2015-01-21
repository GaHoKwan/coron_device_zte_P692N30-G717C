.class Lcom/mediatek/calendarimporter/HandleProgressActivity$1;
.super Ljava/lang/Object;
.source "HandleProgressActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/calendarimporter/HandleProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/calendarimporter/HandleProgressActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/calendarimporter/HandleProgressActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity$1;->this$0:Lcom/mediatek/calendarimporter/HandleProgressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 97
    packed-switch p2, :pswitch_data_0

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity$1;->this$0:Lcom/mediatek/calendarimporter/HandleProgressActivity;

    #calls: Lcom/mediatek/calendarimporter/HandleProgressActivity;->addParseRequest()V
    invoke-static {v0}, Lcom/mediatek/calendarimporter/HandleProgressActivity;->access$000(Lcom/mediatek/calendarimporter/HandleProgressActivity;)V

    goto :goto_0

    .line 103
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity$1;->this$0:Lcom/mediatek/calendarimporter/HandleProgressActivity;

    #getter for: Lcom/mediatek/calendarimporter/HandleProgressActivity;->mService:Lcom/mediatek/calendarimporter/service/VCalService;
    invoke-static {v0}, Lcom/mediatek/calendarimporter/HandleProgressActivity;->access$100(Lcom/mediatek/calendarimporter/HandleProgressActivity;)Lcom/mediatek/calendarimporter/service/VCalService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity$1;->this$0:Lcom/mediatek/calendarimporter/HandleProgressActivity;

    #getter for: Lcom/mediatek/calendarimporter/HandleProgressActivity;->mService:Lcom/mediatek/calendarimporter/service/VCalService;
    invoke-static {v0}, Lcom/mediatek/calendarimporter/HandleProgressActivity;->access$100(Lcom/mediatek/calendarimporter/HandleProgressActivity;)Lcom/mediatek/calendarimporter/service/VCalService;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity$1;->this$0:Lcom/mediatek/calendarimporter/HandleProgressActivity;

    #getter for: Lcom/mediatek/calendarimporter/HandleProgressActivity;->mProcessor:Lcom/mediatek/calendarimporter/service/ImportProcessor;
    invoke-static {v1}, Lcom/mediatek/calendarimporter/HandleProgressActivity;->access$200(Lcom/mediatek/calendarimporter/HandleProgressActivity;)Lcom/mediatek/calendarimporter/service/ImportProcessor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/calendarimporter/service/VCalService;->tryCancelProcessor(Lcom/mediatek/calendarimporter/service/BaseProcessor;)V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
