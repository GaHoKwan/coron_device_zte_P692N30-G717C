.class public Lcom/zte/heartyservice/power/ModeSettingsFragment$MyListItemListener;
.super Ljava/lang/Object;
.source "ModeSettingsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/power/ModeSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyListItemListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/power/ModeSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$MyListItemListener;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "is"
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
    .line 339
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$MyListItemListener;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    invoke-virtual {v3, p3}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->getOpenType(I)I

    move-result v2

    .line 340
    .local v2, openType:I
    move v0, p3

    .line 341
    .local v0, Position:I
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$MyListItemListener;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    #getter for: Lcom/zte/heartyservice/power/ModeSettingsFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->access$100(Lcom/zte/heartyservice/power/ModeSettingsFragment;)Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 342
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "open_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 343
    const-string v3, "position"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 344
    iget-object v3, p0, Lcom/zte/heartyservice/power/ModeSettingsFragment$MyListItemListener;->this$0:Lcom/zte/heartyservice/power/ModeSettingsFragment;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/zte/heartyservice/power/ModeSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 346
    return-void
.end method
