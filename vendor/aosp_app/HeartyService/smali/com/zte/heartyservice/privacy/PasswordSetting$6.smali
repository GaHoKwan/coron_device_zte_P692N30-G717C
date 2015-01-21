.class Lcom/zte/heartyservice/privacy/PasswordSetting$6;
.super Ljava/lang/Object;
.source "PasswordSetting.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/PasswordSetting;->eventInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 1603
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$6;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "button"
    .parameter "checked"

    .prologue
    .line 1606
    invoke-static {p2}, Lcom/zte/heartyservice/privacy/PrivacySetting;->setPatternShowTrack(Z)V

    .line 1607
    return-void
.end method
