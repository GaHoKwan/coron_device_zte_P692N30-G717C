.class Lcn/com/zte/yp/NumberLocatorMainActivity$3;
.super Ljava/lang/Object;
.source "NumberLocatorMainActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/zte/yp/NumberLocatorMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/zte/yp/NumberLocatorMainActivity;


# direct methods
.method constructor <init>(Lcn/com/zte/yp/NumberLocatorMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcn/com/zte/yp/NumberLocatorMainActivity$3;->this$0:Lcn/com/zte/yp/NumberLocatorMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 85
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 87
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 90
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 91
    iget-object v5, p0, Lcn/com/zte/yp/NumberLocatorMainActivity$3;->this$0:Lcn/com/zte/yp/NumberLocatorMainActivity;

    #getter for: Lcn/com/zte/yp/NumberLocatorMainActivity;->tvHint:Landroid/widget/TextView;
    invoke-static {v5}, Lcn/com/zte/yp/NumberLocatorMainActivity;->access$200(Lcn/com/zte/yp/NumberLocatorMainActivity;)Landroid/widget/TextView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    :goto_0
    if-lez p3, :cond_1

    if-lez p4, :cond_1

    .line 143
    :goto_1
    :pswitch_0
    return-void

    .line 93
    :cond_0
    iget-object v5, p0, Lcn/com/zte/yp/NumberLocatorMainActivity$3;->this$0:Lcn/com/zte/yp/NumberLocatorMainActivity;

    #getter for: Lcn/com/zte/yp/NumberLocatorMainActivity;->tvHint:Landroid/widget/TextView;
    invoke-static {v5}, Lcn/com/zte/yp/NumberLocatorMainActivity;->access$200(Lcn/com/zte/yp/NumberLocatorMainActivity;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 99
    :cond_1
    iget-object v5, p0, Lcn/com/zte/yp/NumberLocatorMainActivity$3;->this$0:Lcn/com/zte/yp/NumberLocatorMainActivity;

    #calls: Lcn/com/zte/yp/NumberLocatorMainActivity;->preProcessInput()Ljava/lang/String;
    invoke-static {v5}, Lcn/com/zte/yp/NumberLocatorMainActivity;->access$300(Lcn/com/zte/yp/NumberLocatorMainActivity;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, number:Ljava/lang/String;
    iget-object v5, p0, Lcn/com/zte/yp/NumberLocatorMainActivity$3;->this$0:Lcn/com/zte/yp/NumberLocatorMainActivity;

    #getter for: Lcn/com/zte/yp/NumberLocatorMainActivity;->ipNumbers:[Ljava/lang/String;
    invoke-static {v5}, Lcn/com/zte/yp/NumberLocatorMainActivity;->access$400(Lcn/com/zte/yp/NumberLocatorMainActivity;)[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 101
    iget-object v5, p0, Lcn/com/zte/yp/NumberLocatorMainActivity$3;->this$0:Lcn/com/zte/yp/NumberLocatorMainActivity;

    iget-object v6, p0, Lcn/com/zte/yp/NumberLocatorMainActivity$3;->this$0:Lcn/com/zte/yp/NumberLocatorMainActivity;

    invoke-virtual {v6}, Lcn/com/zte/yp/NumberLocatorMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcn/com/zte/nlt/utils/PhoneNumberUtils;->getIpPrefix(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v6

    #setter for: Lcn/com/zte/yp/NumberLocatorMainActivity;->ipNumbers:[Ljava/lang/String;
    invoke-static {v5, v6}, Lcn/com/zte/yp/NumberLocatorMainActivity;->access$402(Lcn/com/zte/yp/NumberLocatorMainActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 104
    :cond_2
    iget-object v5, p0, Lcn/com/zte/yp/NumberLocatorMainActivity$3;->this$0:Lcn/com/zte/yp/NumberLocatorMainActivity;

    iget-object v6, p0, Lcn/com/zte/yp/NumberLocatorMainActivity$3;->this$0:Lcn/com/zte/yp/NumberLocatorMainActivity;

    #calls: Lcn/com/zte/yp/NumberLocatorMainActivity;->preProcessInput()Ljava/lang/String;
    invoke-static {v6}, Lcn/com/zte/yp/NumberLocatorMainActivity;->access$300(Lcn/com/zte/yp/NumberLocatorMainActivity;)Ljava/lang/String;

    move-result-object v6

    #calls: Lcn/com/zte/yp/NumberLocatorMainActivity;->filterIpPrefix(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcn/com/zte/yp/NumberLocatorMainActivity;->access$500(Lcn/com/zte/yp/NumberLocatorMainActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v1}, Lcn/com/zte/nlt/utils/PhoneNumberUtils;->replaceIpPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 110
    .local v0, len:I
    if-nez v0, :cond_3

    .line 111
    iget-object v5, p0, Lcn/com/zte/yp/NumberLocatorMainActivity$3;->this$0:Lcn/com/zte/yp/NumberLocatorMainActivity;

    #calls: Lcn/com/zte/yp/NumberLocatorMainActivity;->resetHint()V
    invoke-static {v5}, Lcn/com/zte/yp/NumberLocatorMainActivity;->access$000(Lcn/com/zte/yp/NumberLocatorMainActivity;)V

    .line 112
    iget-object v5, p0, Lcn/com/zte/yp/NumberLocatorMainActivity$3;->this$0:Lcn/com/zte/yp/NumberLocatorMainActivity;

    const-string v6, ""

    #setter for: Lcn/com/zte/yp/NumberLocatorMainActivity;->lastQueryNumber:Ljava/lang/String;
    invoke-static {v5, v6}, Lcn/com/zte/yp/NumberLocatorMainActivity;->access$602(Lcn/com/zte/yp/NumberLocatorMainActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 117
    :cond_3
    invoke-static {v1}, Lcn/com/zte/nlt/utils/PhoneNumberUtils;->getNumberPrefix(Ljava/lang/String;)Lcn/com/zte/nlt/module/NumberPrefixInfo;

    move-result-object v2

    .line 118
    .local v2, numberPrefix:Lcn/com/zte/nlt/module/NumberPrefixInfo;
    iget-object v5, p0, Lcn/com/zte/yp/NumberLocatorMainActivity$3;->this$0:Lcn/com/zte/yp/NumberLocatorMainActivity;

    #calls: Lcn/com/zte/yp/NumberLocatorMainActivity;->getPrefixFromNumberPrefixInfo(Lcn/com/zte/nlt/module/NumberPrefixInfo;)Ljava/lang/String;
    invoke-static {v5, v2}, Lcn/com/zte/yp/NumberLocatorMainActivity;->access$700(Lcn/com/zte/yp/NumberLocatorMainActivity;Lcn/com/zte/nlt/module/NumberPrefixInfo;)Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, queryPrefix:Ljava/lang/String;
    invoke-virtual {v2}, Lcn/com/zte/nlt/module/NumberPrefixInfo;->getType()Lcn/com/zte/nlt/NltConst$NumberType;

    move-result-object v5

    iget-object v6, p0, Lcn/com/zte/yp/NumberLocatorMainActivity$3;->this$0:Lcn/com/zte/yp/NumberLocatorMainActivity;

    #getter for: Lcn/com/zte/yp/NumberLocatorMainActivity;->lastQueryNumber:Ljava/lang/String;
    invoke-static {v6}, Lcn/com/zte/yp/NumberLocatorMainActivity;->access$600(Lcn/com/zte/yp/NumberLocatorMainActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v3, v5, v6}, Lcn/com/zte/nlt/utils/PhoneNumberUtils;->needToQuery(Ljava/lang/String;Ljava/lang/String;Lcn/com/zte/nlt/NltConst$NumberType;Ljava/lang/String;)Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;

    move-result-object v4

    .line 122
    .local v4, queryRet:Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;
    sget-object v5, Lcn/com/zte/yp/NumberLocatorMainActivity$4;->$SwitchMap$cn$com$zte$nlt$utils$PhoneNumberUtils$QueryFlag:[I

    invoke-virtual {v4}, Lcn/com/zte/nlt/utils/PhoneNumberUtils$QueryFlag;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 124
    :pswitch_1
    iget-object v5, p0, Lcn/com/zte/yp/NumberLocatorMainActivity$3;->this$0:Lcn/com/zte/yp/NumberLocatorMainActivity;

    invoke-virtual {v5, v3}, Lcn/com/zte/yp/NumberLocatorMainActivity;->queryNumLocation(Ljava/lang/String;)V

    goto :goto_1

    .line 129
    :pswitch_2
    iget-object v5, p0, Lcn/com/zte/yp/NumberLocatorMainActivity$3;->this$0:Lcn/com/zte/yp/NumberLocatorMainActivity;

    const-string v6, ""

    #setter for: Lcn/com/zte/yp/NumberLocatorMainActivity;->lastQueryNumber:Ljava/lang/String;
    invoke-static {v5, v6}, Lcn/com/zte/yp/NumberLocatorMainActivity;->access$602(Lcn/com/zte/yp/NumberLocatorMainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    iget-object v5, p0, Lcn/com/zte/yp/NumberLocatorMainActivity$3;->this$0:Lcn/com/zte/yp/NumberLocatorMainActivity;

    invoke-virtual {v5}, Lcn/com/zte/yp/NumberLocatorMainActivity;->clearAllText()V

    .line 131
    iget-object v5, p0, Lcn/com/zte/yp/NumberLocatorMainActivity$3;->this$0:Lcn/com/zte/yp/NumberLocatorMainActivity;

    #calls: Lcn/com/zte/yp/NumberLocatorMainActivity;->resetHint()V
    invoke-static {v5}, Lcn/com/zte/yp/NumberLocatorMainActivity;->access$000(Lcn/com/zte/yp/NumberLocatorMainActivity;)V

    goto/16 :goto_1

    .line 134
    :pswitch_3
    iget-object v5, p0, Lcn/com/zte/yp/NumberLocatorMainActivity$3;->this$0:Lcn/com/zte/yp/NumberLocatorMainActivity;

    const-string v6, ""

    #setter for: Lcn/com/zte/yp/NumberLocatorMainActivity;->lastQueryNumber:Ljava/lang/String;
    invoke-static {v5, v6}, Lcn/com/zte/yp/NumberLocatorMainActivity;->access$602(Lcn/com/zte/yp/NumberLocatorMainActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    iget-object v5, p0, Lcn/com/zte/yp/NumberLocatorMainActivity$3;->this$0:Lcn/com/zte/yp/NumberLocatorMainActivity;

    invoke-virtual {v5}, Lcn/com/zte/yp/NumberLocatorMainActivity;->clearAllText()V

    .line 136
    iget-object v5, p0, Lcn/com/zte/yp/NumberLocatorMainActivity$3;->this$0:Lcn/com/zte/yp/NumberLocatorMainActivity;

    #calls: Lcn/com/zte/yp/NumberLocatorMainActivity;->resetHint()V
    invoke-static {v5}, Lcn/com/zte/yp/NumberLocatorMainActivity;->access$000(Lcn/com/zte/yp/NumberLocatorMainActivity;)V

    .line 137
    iget-object v5, p0, Lcn/com/zte/yp/NumberLocatorMainActivity$3;->this$0:Lcn/com/zte/yp/NumberLocatorMainActivity;

    #calls: Lcn/com/zte/yp/NumberLocatorMainActivity;->setInvalidNumHint()V
    invoke-static {v5}, Lcn/com/zte/yp/NumberLocatorMainActivity;->access$800(Lcn/com/zte/yp/NumberLocatorMainActivity;)V

    goto/16 :goto_1

    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
