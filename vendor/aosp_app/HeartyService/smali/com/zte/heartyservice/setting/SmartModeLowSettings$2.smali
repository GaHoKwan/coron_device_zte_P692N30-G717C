.class Lcom/zte/heartyservice/setting/SmartModeLowSettings$2;
.super Ljava/lang/Object;
.source "SmartModeLowSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/setting/SmartModeLowSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/SmartModeLowSettings;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/SmartModeLowSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings$2;->this$0:Lcom/zte/heartyservice/setting/SmartModeLowSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "radio"

    .prologue
    const/4 v4, 0x1

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 167
    .local v1, which:I
    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    .line 168
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings$2;->this$0:Lcom/zte/heartyservice/setting/SmartModeLowSettings;

    const-class v3, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    .local v0, intent:Landroid/content/Intent;
    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 171
    const-string v2, "open_type"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    :goto_0
    const-string v2, "position"

    add-int/lit8 v3, v1, -0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings$2;->this$0:Lcom/zte/heartyservice/setting/SmartModeLowSettings;

    invoke-virtual {v2, v0, v4}, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 180
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 173
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_0
    const-string v2, "open_type"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 178
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/zte/heartyservice/setting/SmartModeLowSettings$2;->this$0:Lcom/zte/heartyservice/setting/SmartModeLowSettings;

    invoke-virtual {v2, v1}, Lcom/zte/heartyservice/setting/SmartModeLowSettings;->doWhenChooseRadioButton(I)V

    goto :goto_1
.end method
