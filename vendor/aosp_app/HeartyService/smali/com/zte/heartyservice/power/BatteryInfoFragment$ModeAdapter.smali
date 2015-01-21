.class Lcom/zte/heartyservice/power/BatteryInfoFragment$ModeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BatteryInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/power/BatteryInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/power/BatteryInfoFragment;Landroid/content/Context;II[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"
    .parameter "objects"

    .prologue
    .line 324
    iput-object p1, p0, Lcom/zte/heartyservice/power/BatteryInfoFragment$ModeAdapter;->this$0:Lcom/zte/heartyservice/power/BatteryInfoFragment;

    .line 325
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 326
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 329
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 330
    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/zte/heartyservice/power/BatteryInfoFragment;->setModeDetail(Landroid/view/View;ILjava/lang/String;)V

    .line 331
    return-object p2
.end method
