.class Lcom/zte/heartyservice/main/HeartyServiceRealActivity$19;
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
    .line 1552
    iput-object p1, p0, Lcom/zte/heartyservice/main/HeartyServiceRealActivity$19;->this$0:Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1554
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1555
    return-void
.end method
