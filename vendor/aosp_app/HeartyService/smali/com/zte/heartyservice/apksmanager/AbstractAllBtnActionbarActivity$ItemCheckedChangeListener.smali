.class public Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemCheckedChangeListener;
.super Ljava/lang/Object;
.source "AbstractAllBtnActionbarActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ItemCheckedChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;


# direct methods
.method protected constructor <init>(Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemCheckedChangeListener;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 273
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 274
    .local v0, position:I
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemCheckedChangeListener;->this$0:Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;

    invoke-virtual {v1, v0, p2}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->multiClickHandler(IZ)V

    .line 275
    return-void
.end method
