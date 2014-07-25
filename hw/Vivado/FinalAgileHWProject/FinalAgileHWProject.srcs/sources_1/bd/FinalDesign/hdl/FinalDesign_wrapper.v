`timescale 1 ps / 1 ps

module FinalDesign_wrapper
   (hdmio_io_clk,
    hdmio_io_data,
    hdmio_io_de,
    hdmio_io_hsync,
    hdmio_io_spdif,
    hdmio_io_vsync,
    zed_hdmi_iic_scl_io,
    zed_hdmi_iic_sda_io);
  output hdmio_io_clk;
  output [15:0]hdmio_io_data;
  output hdmio_io_de;
  output hdmio_io_hsync;
  output hdmio_io_spdif;
  output hdmio_io_vsync;
  inout zed_hdmi_iic_scl_io;
  inout zed_hdmi_iic_sda_io;

  wire hdmio_io_clk;
  wire [15:0]hdmio_io_data;
  wire hdmio_io_de;
  wire hdmio_io_hsync;
  wire hdmio_io_spdif;
  wire hdmio_io_vsync;
  wire zed_hdmi_iic_scl_i;
  wire zed_hdmi_iic_scl_io;
  wire zed_hdmi_iic_scl_o;
  wire zed_hdmi_iic_scl_t;
  wire zed_hdmi_iic_sda_i;
  wire zed_hdmi_iic_sda_io;
  wire zed_hdmi_iic_sda_o;
  wire zed_hdmi_iic_sda_t;

FinalDesign FinalDesign_i
       (.hdmio_io_clk(hdmio_io_clk),
        .hdmio_io_data(hdmio_io_data),
        .hdmio_io_de(hdmio_io_de),
        .hdmio_io_hsync(hdmio_io_hsync),
        .hdmio_io_spdif(hdmio_io_spdif),
        .hdmio_io_vsync(hdmio_io_vsync),
        .zed_hdmi_iic_scl_i(zed_hdmi_iic_scl_i),
        .zed_hdmi_iic_scl_o(zed_hdmi_iic_scl_o),
        .zed_hdmi_iic_scl_t(zed_hdmi_iic_scl_t),
        .zed_hdmi_iic_sda_i(zed_hdmi_iic_sda_i),
        .zed_hdmi_iic_sda_o(zed_hdmi_iic_sda_o),
        .zed_hdmi_iic_sda_t(zed_hdmi_iic_sda_t));
IOBUF zed_hdmi_iic_scl_iobuf
       (.I(zed_hdmi_iic_scl_o),
        .IO(zed_hdmi_iic_scl_io),
        .O(zed_hdmi_iic_scl_i),
        .T(zed_hdmi_iic_scl_t));
IOBUF zed_hdmi_iic_sda_iobuf
       (.I(zed_hdmi_iic_sda_o),
        .IO(zed_hdmi_iic_sda_io),
        .O(zed_hdmi_iic_sda_i),
        .T(zed_hdmi_iic_sda_t));
endmodule
