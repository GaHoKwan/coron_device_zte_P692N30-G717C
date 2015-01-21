.class Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$7;
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


# direct methods
.method constructor <init>(Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lzte/com/cn/customerservice_surfing/CustomerService_Surfing$7;->this$0:Lzte/com/cn/customerservice_surfing/CustomerService_Surfing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 222
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 223
    return-void
.end method
