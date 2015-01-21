.class Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$2;
.super Ljava/lang/Object;
.source "AtNightDoNotDisturbSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$2;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "radio"

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 137
    .local v0, which:I
    iget-object v1, p0, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting$2;->this$0:Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;->doWhenChooseRadioButton(I)V

    .line 138
    return-void
.end method
