.class Lcom/lge/camera/components/OpenGLYUVRenderer;
.super Ljava/lang/Object;
.source "OpenGLYUVRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field static final squareVertices:[F

.field static final squareVerticesFront:[F

.field static final textureVertices:[F

.field static final textureVertices_hFlip:[F


# instance fields
.field color:F

.field g_index:I

.field private final mFragmentShader:Ljava/lang/String;

.field private mIsRendererReady:Z

.field private mIsRenderingState:Z

.field private mMediator:Lcom/lge/camera/Mediator;

.field private mProgram:I

.field private mSquareVer:Ljava/nio/FloatBuffer;

.field private mTexCoordsAttr:I

.field private mTextureVer:Ljava/nio/FloatBuffer;

.field private mTextureVerHflip:Ljava/nio/FloatBuffer;

.field private mUniformVideoFrame:I

.field private mUniformVideoFrameUV:I

.field private final mVertexShader:Ljava/lang/String;

.field private mVerticesAttr:I

.field private mVideoFrameTexture:[I

.field private mYuvData:[B

.field private mYuvHeight:I

.field private mYuvWidth:I

.field private mflipH:Z

.field needCreateTexture:Z

.field uv_array:[B

.field y_array:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 392
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lge/camera/components/OpenGLYUVRenderer;->squareVertices:[F

    .line 393
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lge/camera/components/OpenGLYUVRenderer;->squareVerticesFront:[F

    .line 394
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/lge/camera/components/OpenGLYUVRenderer;->textureVertices:[F

    .line 395
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/lge/camera/components/OpenGLYUVRenderer;->textureVertices_hFlip:[F

    return-void

    .line 392
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 393
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 394
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 395
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mYuvData:[B

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mVideoFrameTexture:[I

    .line 48
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mMediator:Lcom/lge/camera/Mediator;

    .line 49
    iput-boolean v3, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mflipH:Z

    .line 50
    iput-boolean v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mIsRendererReady:Z

    .line 52
    iput-boolean v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mIsRenderingState:Z

    .line 70
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->y_array:[B

    .line 71
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->uv_array:[B

    .line 132
    iput-boolean v3, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->needCreateTexture:Z

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->color:F

    .line 397
    const-string v0, "attribute vec4 position;\nattribute highp vec4 inputTextureCoordinate;\nvarying highp vec2 textureCoordinate;\nvoid main() {\n          gl_Position = position;\n          textureCoordinate = inputTextureCoordinate.xy;\n}\n"

    iput-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mVertexShader:Ljava/lang/String;

    .line 404
    const-string v0, "varying highp vec2 textureCoordinate;                                                                                           \n                                                                                                                                                                                         \nuniform highp sampler2D videoFrame;                                                                                                           \nuniform highp sampler2D videoFrameUV;                                                                                                       \n                                                                                                                                                                                              \nconst highp mat3 yuv2rgb = mat3(                                                                                                    \n                          1, 0, 1.596,                                                                            \n                          1, -0.391, -0.813,                                                              \n                          1, 2.018, 0                                                                                     \n                          );                                                                                                              \n                                                                                                                                                                                              \nvoid main() {                                                                                                                                                               \n     highp vec3 yuv = vec3(                                                                                                                                  \n     1.1643 * (texture2D(videoFrame, textureCoordinate).r - 0.0625),        \n     texture2D(videoFrameUV, textureCoordinate).a - 0.5,                                          \n     texture2D(videoFrameUV, textureCoordinate).r - 0.5                                \n     );                                                                                                                                                                       \n                                                                                                                                                                                         \n    highp vec3 rgb = yuv * yuv2rgb;                                                                                                             \n                                                                                                                                                                                         \n    gl_FragColor = vec4(rgb, 1.0);                                                                                                       \n}                                                                                                                                                                                        \n"

    iput-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mFragmentShader:Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/lge/camera/components/OpenGLYUVRenderer;->squareVertices:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mSquareVer:Ljava/nio/FloatBuffer;

    .line 56
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mSquareVer:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/lge/camera/components/OpenGLYUVRenderer;->squareVertices:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 57
    sget-object v0, Lcom/lge/camera/components/OpenGLYUVRenderer;->textureVertices:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTextureVer:Ljava/nio/FloatBuffer;

    .line 58
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTextureVer:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/lge/camera/components/OpenGLYUVRenderer;->textureVertices:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 59
    sget-object v0, Lcom/lge/camera/components/OpenGLYUVRenderer;->textureVertices_hFlip:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTextureVerHflip:Ljava/nio/FloatBuffer;

    .line 60
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTextureVerHflip:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/lge/camera/components/OpenGLYUVRenderer;->textureVertices_hFlip:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 61
    return-void
.end method

.method private checkGlError(Ljava/lang/String;)V
    .locals 4
    .parameter "op"

    .prologue
    .line 382
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, error:I
    if-eqz v0, :cond_0

    .line 383
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 386
    :cond_0
    return-void
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "vertexSource"
    .parameter "fragmentSource"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 351
    const v5, 0x8b31

    invoke-direct {p0, v5, p1}, Lcom/lge/camera/components/OpenGLYUVRenderer;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 352
    .local v3, vertexShader:I
    if-nez v3, :cond_1

    move v2, v4

    .line 377
    :cond_0
    :goto_0
    return v2

    .line 356
    :cond_1
    const v5, 0x8b30

    invoke-direct {p0, v5, p2}, Lcom/lge/camera/components/OpenGLYUVRenderer;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 357
    .local v1, pixelShader:I
    if-nez v1, :cond_2

    move v2, v4

    .line 358
    goto :goto_0

    .line 361
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 362
    .local v2, program:I
    if-eqz v2, :cond_0

    .line 363
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 364
    const-string v5, "glAttachShader"

    invoke-direct {p0, v5}, Lcom/lge/camera/components/OpenGLYUVRenderer;->checkGlError(Ljava/lang/String;)V

    .line 365
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 366
    const-string v5, "glAttachShader"

    invoke-direct {p0, v5}, Lcom/lge/camera/components/OpenGLYUVRenderer;->checkGlError(Ljava/lang/String;)V

    .line 367
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 368
    new-array v0, v6, [I

    .line 369
    .local v0, linkStatus:[I
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 370
    aget v4, v0, v4

    if-eq v4, v6, :cond_0

    .line 371
    const-string v4, "CameraApp"

    const-string v5, "Could not link program: "

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v4, "CameraApp"

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 374
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 5
    .parameter "shaderType"
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    .line 334
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 335
    .local v1, shader:I
    if-eqz v1, :cond_0

    .line 336
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 337
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 338
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 339
    .local v0, compiled:[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 340
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 341
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v2, "CameraApp"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 344
    const/4 v1, 0x0

    .line 347
    .end local v0           #compiled:[I
    :cond_0
    return v1
.end method


# virtual methods
.method public clearYuvData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mYuvData:[B

    .line 75
    iput-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->y_array:[B

    .line 76
    iput-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->uv_array:[B

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mIsRenderingState:Z

    .line 78
    return-void
.end method

.method public closeYUVRenderer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/lge/camera/components/OpenGLYUVRenderer;->clearYuvData()V

    .line 83
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mSquareVer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mSquareVer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 85
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mSquareVer:Ljava/nio/FloatBuffer;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTextureVer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTextureVer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 89
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTextureVer:Ljava/nio/FloatBuffer;

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTextureVerHflip:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTextureVerHflip:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 93
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTextureVerHflip:Ljava/nio/FloatBuffer;

    .line 95
    :cond_2
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mMediator:Lcom/lge/camera/Mediator;

    .line 96
    return-void
.end method

.method public initOpenGLYUVRenderer(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mMediator:Lcom/lge/camera/Mediator;

    .line 65
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13
    .parameter "glUnused"

    .prologue
    const v9, 0x812f

    const/16 v7, 0x1401

    const/4 v12, 0x1

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 146
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 147
    const/16 v2, 0x4100

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 149
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mYuvData:[B

    if-nez v2, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mProgram:I

    if-eqz v2, :cond_0

    .line 156
    iget-boolean v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mIsRendererReady:Z

    if-nez v2, :cond_2

    .line 157
    iput-boolean v1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mIsRenderingState:Z

    goto :goto_0

    .line 161
    :cond_2
    iput-boolean v12, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mIsRenderingState:Z

    .line 166
    iget v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 167
    const-string v2, "glUseProgram"

    invoke-direct {p0, v2}, Lcom/lge/camera/components/OpenGLYUVRenderer;->checkGlError(Ljava/lang/String;)V

    .line 176
    iget-boolean v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->needCreateTexture:Z

    if-eqz v2, :cond_3

    .line 177
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mVideoFrameTexture:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 178
    const/16 v2, 0x2801

    const/16 v3, 0x2601

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 179
    const/16 v2, 0x2800

    const/16 v3, 0x2601

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 180
    const/16 v2, 0x2802

    invoke-static {v0, v2, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 181
    const/16 v2, 0x2803

    invoke-static {v0, v2, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 183
    const/16 v2, 0x1909

    iget v3, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mYuvWidth:I

    iget v4, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mYuvHeight:I

    const/16 v6, 0x1909

    iget-object v5, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->y_array:[B

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 186
    const-string v2, "set Y image"

    invoke-direct {p0, v2}, Lcom/lge/camera/components/OpenGLYUVRenderer;->checkGlError(Ljava/lang/String;)V

    .line 188
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mVideoFrameTexture:[I

    aget v2, v2, v12

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 189
    const/16 v2, 0x2801

    const/16 v3, 0x2600

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 190
    const/16 v2, 0x2800

    const/16 v3, 0x2600

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 191
    const/16 v2, 0x2802

    invoke-static {v0, v2, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 192
    const/16 v2, 0x2803

    invoke-static {v0, v2, v9}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 195
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x190a

    :try_start_0
    iget v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mYuvWidth:I

    div-int/lit8 v5, v0, 0x2

    iget v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mYuvHeight:I

    div-int/lit8 v6, v0, 0x2

    const/4 v7, 0x0

    const/16 v8, 0x190a

    const/16 v9, 0x1401

    iget-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->uv_array:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 199
    const-string v0, "set UV image"

    invoke-direct {p0, v0}, Lcom/lge/camera/components/OpenGLYUVRenderer;->checkGlError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 206
    :goto_1
    iput-boolean v1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->needCreateTexture:Z

    .line 207
    const-string v0, "CameraApp"

    const-string v2, "DrawFrame :Need End"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iput-boolean v1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mIsRenderingState:Z

    goto/16 :goto_0

    .line 200
    :catch_0
    move-exception v11

    .line 201
    .local v11, e:Ljava/lang/NullPointerException;
    const-string v0, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenGLYUVRenderer error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 202
    .end local v11           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v11

    .line 203
    .local v11, e:Ljava/lang/RuntimeException;
    const-string v0, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenGLYUVRenderer error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 211
    .end local v11           #e:Ljava/lang/RuntimeException;
    :cond_3
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 212
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mVideoFrameTexture:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 222
    iget v4, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mYuvWidth:I

    iget v5, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mYuvHeight:I

    const/16 v6, 0x1909

    iget-object v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->y_array:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    move v2, v1

    move v3, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 229
    const-string v2, "set Y image"

    invoke-direct {p0, v2}, Lcom/lge/camera/components/OpenGLYUVRenderer;->checkGlError(Ljava/lang/String;)V

    .line 231
    const v2, 0x84c1

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 232
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mVideoFrameTexture:[I

    aget v2, v2, v12

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 243
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    iget v6, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mYuvWidth:I

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mYuvHeight:I

    div-int/lit8 v7, v7, 0x2

    const/16 v8, 0x190a

    const/16 v9, 0x1401

    iget-object v10, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->uv_array:[B

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 250
    const-string v2, "set UV image"

    invoke-direct {p0, v2}, Lcom/lge/camera/components/OpenGLYUVRenderer;->checkGlError(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 258
    :goto_2
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 259
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mVideoFrameTexture:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 260
    const v2, 0x84c1

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 261
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mVideoFrameTexture:[I

    aget v2, v2, v12

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 263
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 264
    iget v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mUniformVideoFrame:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 265
    iget v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mUniformVideoFrameUV:I

    invoke-static {v0, v12}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 267
    iget v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mVerticesAttr:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    iget-object v7, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mSquareVer:Ljava/nio/FloatBuffer;

    move v5, v1

    move v6, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 268
    iget v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mVerticesAttr:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 270
    iget-boolean v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mflipH:Z

    if-eqz v0, :cond_4

    .line 271
    iget v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTexCoordsAttr:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    iget-object v7, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTextureVerHflip:Ljava/nio/FloatBuffer;

    move v5, v1

    move v6, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 272
    iget v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTexCoordsAttr:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 278
    :goto_3
    const-string v0, "test4"

    invoke-direct {p0, v0}, Lcom/lge/camera/components/OpenGLYUVRenderer;->checkGlError(Ljava/lang/String;)V

    .line 280
    const/4 v0, 0x5

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 281
    iput-boolean v1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mIsRenderingState:Z

    goto/16 :goto_0

    .line 251
    :catch_2
    move-exception v11

    .line 252
    .local v11, e:Ljava/lang/NullPointerException;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OpenGLYUVRenderer error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 253
    .end local v11           #e:Ljava/lang/NullPointerException;
    :catch_3
    move-exception v11

    .line 254
    .local v11, e:Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OpenGLYUVRenderer error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 274
    .end local v11           #e:Ljava/lang/RuntimeException;
    :cond_4
    iget v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTexCoordsAttr:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    iget-object v7, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTextureVer:Ljava/nio/FloatBuffer;

    move v5, v1

    move v6, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 275
    iget v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTexCoordsAttr:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    goto :goto_3
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .parameter "glUnused"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 298
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hb GLSurface onSurfaceChanged width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iput-boolean v3, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mIsRendererReady:Z

    .line 301
    invoke-static {v3, v3, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 303
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isPreviewing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    const-string v0, "CameraApp"

    const-string v1, "OpenGL rederer-onSurfaceChanged:startPreview"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->startPreview()V

    .line 307
    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .parameter "glUnused"
    .parameter "config"

    .prologue
    .line 313
    const-string v0, "attribute vec4 position;\nattribute highp vec4 inputTextureCoordinate;\nvarying highp vec2 textureCoordinate;\nvoid main() {\n          gl_Position = position;\n          textureCoordinate = inputTextureCoordinate.xy;\n}\n"

    const-string v1, "varying highp vec2 textureCoordinate;                                                                                           \n                                                                                                                                                                                         \nuniform highp sampler2D videoFrame;                                                                                                           \nuniform highp sampler2D videoFrameUV;                                                                                                       \n                                                                                                                                                                                              \nconst highp mat3 yuv2rgb = mat3(                                                                                                    \n                          1, 0, 1.596,                                                                            \n                          1, -0.391, -0.813,                                                              \n                          1, 2.018, 0                                                                                     \n                          );                                                                                                              \n                                                                                                                                                                                              \nvoid main() {                                                                                                                                                               \n     highp vec3 yuv = vec3(                                                                                                                                  \n     1.1643 * (texture2D(videoFrame, textureCoordinate).r - 0.0625),        \n     texture2D(videoFrameUV, textureCoordinate).a - 0.5,                                          \n     texture2D(videoFrameUV, textureCoordinate).r - 0.5                                \n     );                                                                                                                                                                       \n                                                                                                                                                                                         \n    highp vec3 rgb = yuv * yuv2rgb;                                                                                                             \n                                                                                                                                                                                         \n    gl_FragColor = vec4(rgb, 1.0);                                                                                                       \n}                                                                                                                                                                                        \n"

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/components/OpenGLYUVRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mProgram:I

    .line 314
    iget v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mProgram:I

    if-nez v0, :cond_0

    .line 331
    :goto_0
    return-void

    .line 317
    :cond_0
    const-string v0, "mProgram"

    invoke-direct {p0, v0}, Lcom/lge/camera/components/OpenGLYUVRenderer;->checkGlError(Ljava/lang/String;)V

    .line 319
    iget v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mProgram:I

    const-string v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mVerticesAttr:I

    .line 320
    iget v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mProgram:I

    const-string v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mTexCoordsAttr:I

    .line 325
    iget v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mProgram:I

    const-string v1, "videoFrame"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mUniformVideoFrame:I

    .line 326
    iget v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mProgram:I

    const-string v1, "videoFrameUV"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mUniformVideoFrameUV:I

    .line 327
    const-string v0, "glGetUniformLocation"

    invoke-direct {p0, v0}, Lcom/lge/camera/components/OpenGLYUVRenderer;->checkGlError(Ljava/lang/String;)V

    .line 329
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mVideoFrameTexture:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 330
    const-string v0, "glGenTextures"

    invoke-direct {p0, v0}, Lcom/lge/camera/components/OpenGLYUVRenderer;->checkGlError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNeedCreateTexture(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->needCreateTexture:Z

    .line 136
    return-void
.end method

.method public setYuvData([BII)Z
    .locals 6
    .parameter "data"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    iget-boolean v4, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mIsRenderingState:Z

    if-eqz v4, :cond_0

    .line 129
    :goto_0
    return v2

    .line 104
    :cond_0
    iput-object p1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mYuvData:[B

    .line 105
    iput p2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mYuvWidth:I

    .line 106
    iput p3, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mYuvHeight:I

    .line 108
    mul-int v1, p2, p3

    .line 109
    .local v1, y_size:I
    mul-int v2, p2, p3

    div-int/lit8 v0, v2, 0x2

    .line 111
    .local v0, uv_size:I
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->y_array:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->y_array:[B

    array-length v2, v2

    if-eq v2, v1, :cond_2

    .line 112
    :cond_1
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->y_array:[B

    .line 113
    iput-boolean v3, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->needCreateTexture:Z

    .line 116
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->uv_array:[B

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->uv_array:[B

    array-length v2, v2

    if-eq v2, v0, :cond_4

    .line 117
    :cond_3
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->uv_array:[B

    .line 120
    :cond_4
    monitor-enter p0

    .line 121
    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->y_array:[B

    const/4 v5, 0x0

    invoke-static {p1, v2, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->uv_array:[B

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iput-boolean v3, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mIsRendererReady:Z

    move v2, v3

    .line 129
    goto :goto_0

    .line 123
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setflipH(Z)V
    .locals 0
    .parameter "flipH"

    .prologue
    .line 292
    iput-boolean p1, p0, Lcom/lge/camera/components/OpenGLYUVRenderer;->mflipH:Z

    .line 293
    return-void
.end method
