.class Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$1;
.super Ljava/lang/Object;
.source "CustomerService_Surfing.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->onCreate(Landroid/os/Bundle;)V
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
    .line 56
    iput-object p1, p0, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$1;->this$0:Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$1;->this$0:Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;->onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 60
    return-void
.end method
