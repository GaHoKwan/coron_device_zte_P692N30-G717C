.class Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$3;
.super Ljava/lang/Object;
.source "CustomerService_Surfing.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->startSubscription()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;


# direct methods
.method constructor <init>(Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$3;->this$0:Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const v2, 0x7f040008

    .line 142
    if-nez p2, :cond_0

    .line 144
    iget-object v0, p0, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$3;->this$0:Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;

    iget-object v1, p0, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$3;->this$0:Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;

    invoke-virtual {v1, v2}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$3;->this$0:Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;

    const v3, 0x7f040009

    invoke-virtual {v2, v3}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->sendSMS(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$3;->this$0:Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;

    iget-object v1, p0, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$3;->this$0:Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;

    invoke-virtual {v1, v2}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$3;->this$0:Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;

    const v3, 0x7f04000a

    invoke-virtual {v2, v3}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->sendSMS(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
