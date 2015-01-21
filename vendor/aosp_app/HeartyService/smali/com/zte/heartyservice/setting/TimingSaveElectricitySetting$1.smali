.class Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$1;
.super Ljava/lang/Object;
.source "TimingSaveElectricitySetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$1;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "radio"

    .prologue
    const/4 v4, 0x1

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 181
    .local v1, which:I
    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    .line 182
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$1;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    const-class v3, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    .local v0, intent:Landroid/content/Intent;
    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 185
    const-string v2, "open_type"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    :goto_0
    const-string v2, "position"

    add-int/lit8 v3, v1, -0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    iget-object v2, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$1;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    invoke-virtual {v2, v0, v4}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->startActivityForResult(Landroid/content/Intent;I)V

    .line 194
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 187
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_0
    const-string v2, "open_type"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 192
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$1;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    invoke-virtual {v2, v1}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;->doWhenChooseRadioButton(I)V

    goto :goto_1
.end method
