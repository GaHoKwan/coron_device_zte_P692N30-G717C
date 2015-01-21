.class Lcom/zte/retrieve/activity/RetrieveEntryActivity$2;
.super Ljava/lang/Object;
.source "RetrieveEntryActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/retrieve/activity/RetrieveEntryActivity;->initCheckBoxSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/activity/RetrieveEntryActivity;


# direct methods
.method constructor <init>(Lcom/zte/retrieve/activity/RetrieveEntryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity$2;->this$0:Lcom/zte/retrieve/activity/RetrieveEntryActivity;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/zte/retrieve/activity/RetrieveEntryActivity$2;->this$0:Lcom/zte/retrieve/activity/RetrieveEntryActivity;

    #calls: Lcom/zte/retrieve/activity/RetrieveEntryActivity;->setOpenButtonClickStatus()V
    invoke-static {v0}, Lcom/zte/retrieve/activity/RetrieveEntryActivity;->access$0(Lcom/zte/retrieve/activity/RetrieveEntryActivity;)V

    .line 103
    return-void
.end method
