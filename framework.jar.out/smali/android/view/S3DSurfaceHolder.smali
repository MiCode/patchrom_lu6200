.class public interface abstract Landroid/view/S3DSurfaceHolder;
.super Ljava/lang/Object;
.source "S3DSurfaceHolder.java"

# interfaces
.implements Landroid/view/SurfaceHolder;


# static fields
.field public static final SURFACE_S3D_DISABLE_AUTO_DETECTION:I = 0x80

.field public static final SURFACE_S3D_FEATURE_MASK:I = 0xff

.field public static final SURFACE_S3D_ORDER_LR:I = 0x0

.field public static final SURFACE_S3D_ORDER_L_ONLY:I = 0x20

.field public static final SURFACE_S3D_ORDER_MASK:I = 0x70

.field public static final SURFACE_S3D_ORDER_RL:I = 0x10

.field public static final SURFACE_S3D_ORDER_R_ONLY:I = 0x30

.field public static final SURFACE_S3D_ORDER_TOP_ONLY:I = 0x40

.field public static final SURFACE_S3D_TYPE_AUTO_CONVERSION:I = 0x8

.field public static final SURFACE_S3D_TYPE_CHECKERBOARD:I = 0x6

.field public static final SURFACE_S3D_TYPE_COLUMN_INTERLACED:I = 0x3

.field public static final SURFACE_S3D_TYPE_END:I = 0x8

.field public static final SURFACE_S3D_TYPE_FRAME_SEQUENCE:I = 0x7

.field public static final SURFACE_S3D_TYPE_MASK:I = 0xf

.field public static final SURFACE_S3D_TYPE_NONE:I = 0x0

.field public static final SURFACE_S3D_TYPE_PIXEL_INTERLACED:I = 0x5

.field public static final SURFACE_S3D_TYPE_ROW_INTERLACED:I = 0x4

.field public static final SURFACE_S3D_TYPE_SS:I = 0x1

.field public static final SURFACE_S3D_TYPE_START:I = 0x0

.field public static final SURFACE_S3D_TYPE_TB:I = 0x2


# virtual methods
.method public abstract compensateS3DBrightness(F)V
.end method

.method public abstract getS3DConvergenceDisparity()F
.end method

.method public abstract getS3DInfo()Landroid/view/S3DInfo;
.end method

.method public abstract getS3DType()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getS3DViewMode()I
.end method

.method public abstract setS3DConvergenceDisparity(F)V
.end method

.method public abstract setS3DInfo(Landroid/view/S3DInfo;)V
.end method

.method public abstract setS3DType(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setS3DViewMode(I)V
.end method
