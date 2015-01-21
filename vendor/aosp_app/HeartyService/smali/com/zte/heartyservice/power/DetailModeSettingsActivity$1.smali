.class Lcom/zte/heartyservice/power/DetailModeSettingsActivity$1;
.super Ljava/lang/Object;
.source "DetailModeSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/power/DetailModeSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$1;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 89
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$1;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    #calls: Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->Back()V
    invoke-static {v1}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->access$000(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V

    goto :goto_0

    .line 94
    :pswitch_1
    iget-object v1, p0, Lcom/zte/heartyservice/power/DetailModeSettingsActivity$1;->this$0:Lcom/zte/heartyservice/power/DetailModeSettingsActivity;

    #calls: Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->SaveMode()V
    invoke-static {v1}, Lcom/zte/heartyservice/power/DetailModeSettingsActivity;->access$100(Lcom/zte/heartyservice/power/DetailModeSettingsActivity;)V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x7f0e000b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
