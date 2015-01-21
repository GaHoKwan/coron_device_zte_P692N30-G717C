.class Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$timeButtonListener;
.super Ljava/lang/Object;
.source "TimingSaveElectricitySetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "timeButtonListener"
.end annotation


# instance fields
.field private mTime:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;

.field final synthetic this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;)V
    .locals 0
    .parameter
    .parameter "time"

    .prologue
    .line 291
    iput-object p1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$timeButtonListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object p2, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$timeButtonListener;->mTime:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;

    .line 293
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 298
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v1, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$timeButtonListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    new-instance v2, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;

    iget-object v3, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$timeButtonListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    invoke-direct {v2, v3, p1}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$TimeListener;-><init>(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;Landroid/view/View;)V

    iget-object v3, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$timeButtonListener;->mTime:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;

    #getter for: Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;->tHour:I
    invoke-static {v3}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;->access$000(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;)I

    move-result v3

    iget-object v4, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$timeButtonListener;->mTime:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;

    #getter for: Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;->tMinute:I
    invoke-static {v4}, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;->access$100(Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$MyTime;)I

    move-result v4

    iget-object v5, p0, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting$timeButtonListener;->this$0:Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 306
    .local v0, tp:Landroid/app/TimePickerDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/TimePickerDialog;->setCanceledOnTouchOutside(Z)V

    .line 307
    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    .line 308
    return-void
.end method
