.class Lcom/zte/heartyservice/main/HeartyServiceRealActivity$5;
.super Ljava/lang/Object;
.source "HeartyServiceRealActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->addHeartServiceShortCut()V
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
    .line 533
    iput-object p1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$5;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 536
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->addLaunchShortCut()V

    .line 537
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 538
    return-void
.end method
