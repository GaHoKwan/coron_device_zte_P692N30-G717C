.class Lcom/zte/heartyservice/main/HeartyServiceRealActivity$20;
.super Ljava/lang/Object;
.source "HeartyServiceRealActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->stopHeartyService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/HeartyServiceRealActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1545
    iput-object p1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$20;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$20;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Common/VipModeUtils;->turnOffVipMode(Landroid/content/Context;)V

    .line 1548
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1549
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$20;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->finish()V

    .line 1550
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$20;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/AutoRunSwitch;->stopHeartyService(Landroid/content/Context;)V

    .line 1551
    return-void
.end method
