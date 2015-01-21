.class Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$SwitchCheckedChangeListener;
.super Ljava/lang/Object;
.source "ClearAppSettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchCheckedChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$SwitchCheckedChangeListener;->this$0:Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$SwitchCheckedChangeListener;-><init>(Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    .local v0, pName:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 162
    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->addWhiteApp(Ljava/lang/String;)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->removeWhiteApp(Ljava/lang/String;)V

    goto :goto_0
.end method
