.class Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$6;
.super Ljava/lang/Object;
.source "CustomerService_Surfing.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->startServiceGuide()V
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
    .line 185
    iput-object p1, p0, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$6;->this$0:Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 188
    if-nez p2, :cond_0

    .line 190
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 191
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$6;->this$0:Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;

    const-class v2, Lzte/com/cn/customerservice_surfing/Serviceguide;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 192
    iget-object v1, p0, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$6;->this$0:Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;

    invoke-virtual {v1, v0}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->startActivity(Landroid/content/Intent;)V

    .line 202
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 194
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 196
    iget-object v1, p0, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$6;->this$0:Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;

    const v2, 0x7f040016

    invoke-virtual {v1, v2}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->startztehotline(I)V

    goto :goto_0

    .line 200
    :cond_1
    iget-object v1, p0, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$6;->this$0:Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;

    const v2, 0x7f040017

    invoke-virtual {v1, v2}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->startztehotline(I)V

    goto :goto_0
.end method
