.class Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$1;
.super Ljava/lang/Object;
.source "ZDYellowSearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 76
    iput-object p1, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$1;->this$0:Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 108
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 105
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 9
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 79
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 80
    iget-object v3, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$1;->this$0:Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;

    #getter for: Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->search_info:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->access$000(Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 81
    new-array v2, v8, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 82
    .local v2, temp:[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "search "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " begin times:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/zte/yp/utils/Logging;->d(Ljava/lang/String;)V

    .line 83
    iget-object v3, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$1;->this$0:Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;

    #calls: Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->queryYpContact([Ljava/lang/String;)Ljava/util/List;
    invoke-static {v3, v2}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->access$100(Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 84
    .local v1, obj:Ljava/util/List;,"Ljava/util/List<Lcn/com/zte/yp/YpContact;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "search "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end times:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/zte/yp/utils/Logging;->d(Ljava/lang/String;)V

    .line 85
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 86
    iget-object v3, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$1;->this$0:Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;

    #getter for: Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->linearLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->access$200(Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 88
    const-string v0, ""

    .line 89
    .local v0, buffer:Ljava/lang/String;
    iget-object v3, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$1;->this$0:Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;

    const v4, 0x7f080009

    invoke-virtual {v3, v4}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    new-array v3, v8, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v3, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$1;->this$0:Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;

    #getter for: Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->searchNumber:Landroid/widget/TextView;
    invoke-static {v3}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->access$300(Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .end local v0           #buffer:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$1;->this$0:Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;

    invoke-virtual {v3, v1}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->updateLayout(Ljava/util/List;)V

    .line 102
    .end local v1           #obj:Ljava/util/List;,"Ljava/util/List<Lcn/com/zte/yp/YpContact;>;"
    .end local v2           #temp:[Ljava/lang/String;
    :goto_1
    return-void

    .line 94
    .restart local v1       #obj:Ljava/util/List;,"Ljava/util/List<Lcn/com/zte/yp/YpContact;>;"
    .restart local v2       #temp:[Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$1;->this$0:Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;

    #getter for: Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->linearLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->access$200(Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 98
    .end local v1           #obj:Ljava/util/List;,"Ljava/util/List<Lcn/com/zte/yp/YpContact;>;"
    .end local v2           #temp:[Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$1;->this$0:Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;

    #getter for: Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->search_info:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->access$000(Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 99
    iget-object v3, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$1;->this$0:Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;

    #getter for: Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->linearLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->access$200(Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 100
    iget-object v3, p0, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity$1;->this$0:Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;

    invoke-virtual {v3}, Lcn/com/zte/yp/activityZD/ZDYellowSearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1
.end method
