.class public Lcom/zte/heartyservice/speedup/SpeedListActivity$ItemOnClickListener;
.super Ljava/lang/Object;
.source "SpeedListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/speedup/SpeedListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ItemOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/speedup/SpeedListActivity;


# direct methods
.method protected constructor <init>(Lcom/zte/heartyservice/speedup/SpeedListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/zte/heartyservice/speedup/SpeedListActivity$ItemOnClickListener;->this$0:Lcom/zte/heartyservice/speedup/SpeedListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "arg1"
    .parameter "position"
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
    .line 44
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/zte/heartyservice/speedup/SpeedListActivity$ItemOnClickListener;->this$0:Lcom/zte/heartyservice/speedup/SpeedListActivity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/zte/heartyservice/speedup/SpeedListActivity;->handleItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 45
    return-void
.end method
