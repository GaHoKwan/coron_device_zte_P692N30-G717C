.class Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$8;
.super Ljava/lang/Object;
.source "CustomerService_Surfing.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->startztehotline(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$8;->this$0:Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;

    iput p2, p0, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$8;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 215
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    iget-object v2, p0, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$8;->this$0:Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;

    iget v3, p0, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$8;->val$resId:I

    invoke-virtual {v2, v3}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 217
    .local v0, myIntentDail:Landroid/content/Intent;
    iget-object v1, p0, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$8;->this$0:Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;

    invoke-virtual {v1, v0}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->startActivity(Landroid/content/Intent;)V

    .line 218
    return-void
.end method
