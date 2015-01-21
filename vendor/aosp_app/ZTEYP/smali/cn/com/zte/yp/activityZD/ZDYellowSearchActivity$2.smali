.class Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$2;
.super Ljava/lang/Object;
.source "ZDYellowSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;


# direct methods
.method constructor <init>(Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$2;->this$0:Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 145
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 146
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$2;->this$0:Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;

    const-class v2, Lcn/com/zte/yp/activityZD/YellowPagesSettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 148
    iget-object v1, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$2;->this$0:Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;

    invoke-virtual {v1, v0}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 149
    return-void
.end method
