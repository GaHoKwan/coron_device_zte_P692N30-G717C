.class Lcom/zte/heartyservice/net/NetTrafficStatsActivity$1;
.super Ljava/lang/Object;
.source "NetTrafficStatsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/net/NetTrafficStatsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/net/NetTrafficStatsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$1;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 85
    if-eqz p2, :cond_0

    .line 86
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$1;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->switchAll(Z)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficStatsActivity$1;->this$0:Lcom/zte/heartyservice/net/NetTrafficStatsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/net/NetTrafficStatsActivity;->switchAll(Z)V

    goto :goto_0
.end method
